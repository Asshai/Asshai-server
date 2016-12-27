# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.shortcuts import get_object_or_404
from django.db.models.expressions import RawSQL

from rest_framework.viewsets import ModelViewSet, ReadOnlyModelViewSet, GenericViewSet
from rest_framework.mixins import CreateModelMixin, ListModelMixin
from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import list_route, detail_route, api_view
from rest_framework.response import Response
from rest_framework_swagger import renderers
from rest_framework.exceptions import ParseError
from django.db.models import Q
from django.views.decorators.cache import cache_page
from itertools import chain

from . import models
from . import serializers

NEARBY_RADIUS = 2 * 1000

class ActionSerializerMixin(object):
    """
    Viewset 中根据不同的 action 提供不同的 Serializer

    用法：
    serializer_classes = {'action': 'serializer', ...}
    """
    def get_serializer_class(self):
        try:
            return self.serializer_classes[self.action]
        except AttributeError:
            raise AttributeError
        except KeyError:
            try:
                return self.serializer_classes['__default__']
            except KeyError:
                return super(ActionSerializerMixin, self).get_serializer_class()


class LocationViewSet(ReadOnlyModelViewSet):
    """
    [小区]
    """
    serializer_class = serializers.LocationSerializer
    queryset = models.Location.objects.all()

    @list_route(methods=['GET'])
    def nearby(self, request):
        """
        根据当前位置获得附近的小区
        ---
        parameters:
            - longitude: 经度
              lantitude: 纬度
              required: false
              type: double string
              paramType: query
        """
        lon = request.GET.get('longitude')
        lan = request.GET.get('lantitude')
        if not lon or not lan:
            raise ParseError('request must hava longitude and lantitude')
        q = models.Location.objects.all()
        ss = []
        for x in q:
            dis = x.calc_distance(lon, lan)
            if dis < NEARBY_RADIUS and x.topics > 0:
                x.distance = dis
                ss.append(x)
        self.queryset = ss
        return self.list(request)

    @list_route(methods=['GET'])
    def search(self, request):
        """
        搜索地点
        ---
        paths: /location/search
        parameters:
            - q: 关键字
              required: true
              type: string
              paramType: form
            - longitude: 经度
              lantitude: 纬度

        """
        query = request.GET.get('q')
        lon = request.GET.get('longitude')
        lan = request.GET.get('lantitude')
        if not query:
            raise ParseError('request must hava query')
        q = models.Location.objects.filter(name__contains=query)
        ss = []
        for x in q:
            if x.topics > 0:
                if lon and lan:
                    x.distance = x.calc_distance(lon, lan)
                ss.append(x)
        self.queryset = ss
        return self.list(request)


class TopicViewSet(ActionSerializerMixin, ModelViewSet):
    """
    [帖子详情]
    """
    serializer_classes = {
        '__default__': serializers.TopicSerializer,
        'list': serializers.ListTopicSerializer,
        'hot': serializers.ListTopicSerializer,
        'search': serializers.ListTopicSerializer,
        'nearby': serializers.ListTopicSerializer,
    }
    queryset = models.Topic.objects.all()

    @list_route(methods=['GET'])
    def hot(self, request):
        """
        选择小区的热门帖子
        ---
        paths: /topic/hot
        parameters:
            - location_id:
              required: true
              type: string
              paramType: form

        """
        location_id = request.GET.get('location_id')
        if not location_id:
            raise ParseError('request must hava location_id')
        location = get_object_or_404(models.Location, id=location_id)
        # self.queryset = models.Topic.objects.filter(Q(title__contains=location.name) | Q(content__contains=location.name)).order_by('title', 'create_time').reverse().distinct('title')
        # return self.list(request)

        like = '%' + location.name + '%'
        queryset = models.Topic.objects.raw('select * from topic_topic where douban_id in '
                                            '(select min(douban_id) from topic_topic '
                                            'where title like %s or content like %s group by title)'
                                            'order by create_time desc', [like, like])
        page = self.paginate_queryset(list(queryset))
        if page is not None:
            s = self.get_serializer(page, many=True)
            return self.get_paginated_response(s.data)
        s = self.get_serializer(queryset, many=True)
        return Response(s.data)

    @list_route(methods=['GET'])
    def search(self, request):
        """
        根据地点搜索帖子
        ---
        paths: /topic/search
        parameters:
            - q: 关键字
              required: true
              type: string
              paramType: form

        """
        query = request.GET.get('q')
        if not query:
            raise ParseError('request must hava query')

        like = '%' + query + '%'
        queryset = models.Topic.objects.raw('select * from topic_topic where douban_id in '
                                            '(select min(douban_id) from topic_topic '
                                            'where title like %s or content like %s group by title)'
                                            'order by create_time desc', [like, like])
        page = self.paginate_queryset(list(queryset))
        if page is not None:
            s = self.get_serializer(page, many=True)
            return self.get_paginated_response(s.data)
        s = self.get_serializer(queryset, many=True)
        return Response(s.data)

    @list_route(methods=['GET'])
    def nearby(self, request):
        """
        根据当前位置获得附近的帖子
        ---
        parameters:
            - longitude: 经度
              lantitude: 纬度
              required: false
              type: double string
              paramType: query
        """
        lon = request.GET.get('longitude')
        lan = request.GET.get('lantitude')
        if not lon or not lan:
            raise ParseError('request must hava longitude and lantitude')
        q = models.Location.objects.all()
        locations = [x for x in q if x.calc_distance(lon, lan) < NEARBY_RADIUS and x.topics > 0]
        sets = []
        for l in locations:
            like = '%' + l.name + '%'
            s = models.Topic.objects.raw('select * from topic_topic where douban_id in '
                                         '(select min(douban_id) from topic_topic '
                                         'where title like %s or content like %s group by title) ', [like, like])
            sets.append(s)
        result_list = list(chain(*sets))
        import time
        result_list.sort(key=lambda x : int(time.mktime(x.create_time.timetuple())*1000), reverse=True)

        page = self.paginate_queryset(result_list)
        if page is not None:
            s = self.get_serializer(page, many=True)
            return self.get_paginated_response(s.data)
        s = self.get_serializer(result_list, many=True)
        return Response(s.data)


from django.http import HttpResponse
import urllib2
def picture_proxy(request):
    src = request.GET.get('src')
    if not src:
        raise ParseError('request must hava src')

    res = urllib2.urlopen(src)
    r = HttpResponse(res.read())
    print res.code
    # set the headers
    for header in res.info().keys():
        if header == 'content-type':
            r[header] = res.info()[header]
    return r

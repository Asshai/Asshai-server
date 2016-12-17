# -*- coding: utf-8 -*-
from django.shortcuts import render

# Create your views here.
from django.shortcuts import get_object_or_404
from rest_framework.viewsets import ModelViewSet, ReadOnlyModelViewSet, GenericViewSet
from rest_framework.mixins import CreateModelMixin, ListModelMixin
from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import list_route, detail_route
from rest_framework.response import Response
from rest_framework_swagger import renderers

from . import models
from . import serializers


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
        self.queryset = self.get_queryset()
        return self.list(request)


class TopicViewSet(ReadOnlyModelViewSet):
    """
    [帖子详情]
    """
    serializer_class = serializers.TopicSerializer
    queryset = models.Topic.objects.all()

    def initial(self, request, *args, **kwargs):
        """
        获取帖子详情
        ---
        paths: /topic/{douban_id}
        parameters:
            - douban_id:
              required: true
              type: string
              paramType: form
        """
        self.meeting = get_object_or_404(Meeting,
                                         pk=self.kwargs.get('douban_id'))
        return super(NoteViewSet, self).initial(request, *args, **kwargs)
    
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
        self.queryset = self.get_queryset()
        return self.list(request)



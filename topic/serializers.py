from rest_framework import serializers

from . import models

class LocationSerializer(serializers.ModelSerializer):


    class Meta:
        model = models.Location
        # fields = ('id', 'name', 'longitude', 'latitude', 'topics', 'marker_icon')
        fields = ('id', 'name', 'longitude', 'latitude', 'topics', 'cover', 'address', 'distance')
        read_only_fields = ('name', 'longitude', 'latitude', 'cover', 'address')


class ListTopicSerializer(serializers.ModelSerializer):

    location = LocationSerializer()

    class Meta:
        model = models.Topic
        fields = ('douban_id', 'group_id', 'title', 'url', 'create_time',
            'update_time', 'author_name', 'author_url', 'author_avatar', 'cover', 'location')


class TopicSerializer(serializers.ModelSerializer):

    location = LocationSerializer()

    class Meta:
        model = models.Topic
        fields = ('douban_id', 'group_id', 'title', 'url', 'content', 'create_time',
            'update_time', 'author_name', 'author_url', 'author_avatar', 'location', 'photo_list')

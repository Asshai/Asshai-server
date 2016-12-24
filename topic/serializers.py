from rest_framework import serializers

from . import models

class LocationSerializer(serializers.ModelSerializer):


    class Meta:
        model = models.Location
        fields = ('id', 'name', 'longitude', 'latitude', 'topics')
        read_only_fields = ('name', 'longitude', 'latitude')


class ListTopicSerializer(serializers.ModelSerializer):

    class Meta:
        model = models.Topic
        fields = ('douban_id', 'group_id', 'title', 'url', 'create_time',
            'update_time', 'author_name', 'author_url', 'author_avatar', 'location', 'cover')


class TopicSerializer(serializers.ModelSerializer):

    class Meta:
        model = models.Topic
        fields = ('douban_id', 'group_id', 'title', 'url', 'content', 'create_time',
            'update_time', 'author_name', 'author_url', 'author_avatar', 'location', 'photo_list')

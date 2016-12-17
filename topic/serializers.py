from rest_framework import serializers

from . import models

class LocationSerializer(serializers.ModelSerializer):

    class Meta:
        model = models.Location
        fields = ('name', 'longitude', 'latitude', 'topics_count')
        read_only_fields = ('name', 'longitude', 'latitude')


class TopicSerializer(serializers.ModelSerializer):

    class Meta:
        model = models.Topic
        fields = ('douban_id', 'group_id', 'title', 'url', 'content', 'create_time', 
            'update_time', 'author_name', 'author_url', 'author_avatar', 'location')
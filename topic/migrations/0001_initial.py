# -*- coding: utf-8 -*-
# Generated by Django 1.10.4 on 2016-12-17 18:01
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Group',
            fields=[
                ('douban_id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=200)),
                ('crawl_count', models.IntegerField(default=30)),
            ],
        ),
        migrations.CreateModel(
            name='Location',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('longitude', models.FloatField()),
                ('latitude', models.FloatField()),
                ('topics_count', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Topic',
            fields=[
                ('douban_id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('group_id', models.CharField(max_length=20)),
                ('title', models.CharField(db_index=True, max_length=255)),
                ('url', models.CharField(db_index=True, max_length=100)),
                ('create_time', models.DateTimeField(db_index=True)),
                ('update_time', models.DateTimeField(db_index=True)),
                ('content', models.TextField()),
                ('author_name', models.CharField(max_length=100)),
                ('author_avatar', models.CharField(max_length=200)),
                ('author_url', models.CharField(max_length=100)),
                ('photos', models.TextField()),
                ('location', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='topic.Location')),
            ],
        ),
    ]
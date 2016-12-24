from django.conf.urls import url, include
from rest_framework.routers import DefaultRouter

from . import views


router = DefaultRouter()
router.register(r'location', views.LocationViewSet, base_name='location')
router.register(r'topic', views.TopicViewSet, base_name='topic')


urlpatterns = [
    url(r'^', include(router.urls)),
    url(r'picture/', views.picture_proxy),
]

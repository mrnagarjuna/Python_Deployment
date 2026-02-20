from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import MstCampaignTypesViewSet,MstCampaignTeamRoleViewSet

router = DefaultRouter()

router.register(r'mst-campaign-types', MstCampaignTypesViewSet, basename='mstcampaigntypes')
router.register(r'mst-campaign-teamrole',MstCampaignTeamRoleViewSet,basename='mstcampaignteamrole')


urlpatterns = [
    path('', include(router.urls)),
]

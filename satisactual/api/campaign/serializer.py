from rest_framework import serializers
from .models import MstCampaignTypes,MstCampaignTeamRole

class MstCampaignTypesSerializer(serializers.ModelSerializer):
    class Meta:
        model = MstCampaignTypes
        fields = "__all__"


class MstCampaignTeamRoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = MstCampaignTeamRole
        fields = '__all__'




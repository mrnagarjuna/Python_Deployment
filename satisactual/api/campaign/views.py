from rest_framework import status, viewsets,permissions
from .models import MstCampaignTypes, MstCampaignTeamRole
from .serializer import MstCampaignTypesSerializer, MstCampaignTeamRoleSerializer
from utils.services.responses import success_response  # adjust path if needed
from rest_framework.permissions import IsAuthenticated


class MstCampaignTypesViewSet(viewsets.ModelViewSet):
    queryset = MstCampaignTypes.objects.all()
    serializer_class = MstCampaignTypesSerializer
    permission_classes = [IsAuthenticated]

    def list(self, request, *args, **kwargs):
        data = self.get_serializer(self.get_queryset(), many=True).data
        return success_response(
            message="Campaign types fetched successfully",
            data=data,
            status_code=status.HTTP_200_OK
        )

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()

        return success_response(
            message="Campaign type created successfully",
            data=serializer.data,
            status_code=status.HTTP_201_CREATED
        )

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        data = self.get_serializer(instance).data
        return success_response(
            message="Campaign type retrieved successfully",
            data=data,
            status_code=status.HTTP_200_OK
        )

    def update(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()

        return success_response(
            message="Campaign type updated successfully",
            data=serializer.data,
            status_code=status.HTTP_200_OK
        )

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        instance.delete()

        return success_response(
            message="Campaign type deleted successfully",
            data=None,
            status_code=status.HTTP_204_NO_CONTENT
        )


class MstCampaignTeamRoleViewSet(viewsets.ModelViewSet):
    queryset = MstCampaignTeamRole.objects.all()
    serializer_class = MstCampaignTeamRoleSerializer
    permission_classes = [IsAuthenticated]
    

    def list(self, request, *args, **kwargs):
        data = self.get_serializer(self.get_queryset(), many=True).data
        return success_response(
            message="Campaign team roles fetched successfully",
            data=data,
            status_code=status.HTTP_200_OK
        )

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()

        return success_response(
            message="Campaign team role created successfully",
            data=serializer.data,
            status_code=status.HTTP_201_CREATED
        )

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        data = self.get_serializer(instance).data
        return success_response(
            message="Campaign team role retrieved successfully",
            data=data,
            status_code=status.HTTP_200_OK
        )

    def update(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()

        return success_response(
            message="Campaign team role updated successfully",
            data=serializer.data,
            status_code=status.HTTP_200_OK
        )

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        instance.delete()

        return success_response(
            message="Campaign team role deleted successfully",
            data=None,
            status_code=status.HTTP_204_NO_CONTENT
        )

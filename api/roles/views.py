from django.shortcuts import render

from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from .models import SecUserRoles,SecUserXRoles,SecUserRoleMenus,SecUserRoleDisclosures
from .serializer import SecUserRolesSerializer,SecUserXRolesSerializer,SecUserRoleMenusSerializer,SecUserRoleDisclosuresSerializer,SecUserActiveRolesSerializer
from utils.services.baseviewset import BaseModelViewSet
from rest_framework.decorators import action
from utils.services.responses import success_response,error_response
from rest_framework import status


class SecUserRolesViewSet(BaseModelViewSet):
    queryset = SecUserRoles.objects.all()
    serializer_class = SecUserRolesSerializer
    permission_classes = [IsAuthenticated]

    @action(detail=False,methods=["get"],url_path="active-roles",permission_classes=[IsAuthenticated])
    def activeRoles(self,request):
        try:
          queryset=SecUserRoles.objects.filter(cod_rec_status='A')
          serializer=SecUserActiveRolesSerializer(queryset,many=True)
          return success_response("active roles retrieved successfully", data=serializer.data)
        except Exception as e:
            return error_response("internal server error", errors=str(e), status_code=status.HTTP_500_INTERNAL_SERVER_ERROR)
    
    @action(detail=True,methods=["patch"],url_path="status",permission_classes=[IsAuthenticated])
    def toggle_status(self, request, pk=None):
        try:
            obj = self.get_object()
            serializer = SecUserRolesSerializer(obj, data=request.data)
            if serializer.is_valid():
                is_active = serializer.validated_data['cod_rec_status']
                obj.cod_rec_status = is_active
                obj.save()
                if is_active=='A':
                    return success_response("actived")
                elif is_active=='C':
                    return success_response("deactivated")
                else:
                    return error_response("enter correct status, A-->Active,C-->Inactive")
            return error_response("error occured", errors=serializer.errors)
        except Exception as e:
            return error_response("internal server error", errors=str(e), status_code=status.HTTP_500_INTERNAL_SERVER_ERROR)



class SecUserXRolesViewSet(BaseModelViewSet):
    queryset = SecUserXRoles.objects.all()
    serializer_class = SecUserXRolesSerializer
    permission_classes = [IsAuthenticated]


class SecUserRoleMenusListView(BaseModelViewSet):
    queryset = SecUserRoleMenus.objects.all().order_by(
        "cod_user_role",
        "num_display_order"
    )
    serializer_class = SecUserRoleMenusSerializer

class SecUserRoleDisclosuresListView(BaseModelViewSet):
    queryset = SecUserRoleDisclosures.objects.all().order_by(
        "cod_user_role",
        "num_sequence"
    )
    serializer_class = SecUserRoleDisclosuresSerializer




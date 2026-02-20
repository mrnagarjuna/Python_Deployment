from django.shortcuts import render
from utils.services.baseviewset import BaseModelViewSet
from .models import MstProdCodes,MstProdDisclosures,MstProdDocs,MstPromoCodes
from .serializers import MstProdCodesSerializer,MstProdDisclosuresSerializer,MstProdDocsSerializer,MstPromoCodesSerializer,MstActiveProdCodesSerializer,MstActivePromoCodesSerializer
from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import action
from utils.services.responses import error_response,success_response
from rest_framework import status

class MstProdCodesViewset(BaseModelViewSet):
    queryset=MstProdCodes.objects.all()
    serializer_class=MstProdCodesSerializer
    permission_classes=[IsAuthenticated]

    @action(detail=False,methods=["get"],url_path="active-prodcodes",permission_classes=[IsAuthenticated])
    def activeProdCodes(self,request):
        try:
          queryset=MstProdCodes.objects.filter(cod_rec_status='A')
          serializer=MstActiveProdCodesSerializer(queryset,many=True)
          return success_response("active prodcodes retrieved successfully", data=serializer.data)
        except Exception as e:
            return error_response("internal server error", errors=str(e), status_code=status.HTTP_500_INTERNAL_SERVER_ERROR)
    @action(detail=True,methods=["patch"],url_path="status",permission_classes=[IsAuthenticated])
    def toggle_status(self, request, pk=None):
        try:
            obj = self.get_object()
            serializer = MstProdCodesSerializer(obj, data=request.data)
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


class MstProdDisclosuresViewSet(BaseModelViewSet):
    queryset = MstProdDisclosures.objects.all()
    serializer_class = MstProdDisclosuresSerializer
    permission_classes = [IsAuthenticated]

class MstProdDocsViewSet(BaseModelViewSet):
    queryset = MstProdDocs.objects.all()
    serializer_class = MstProdDocsSerializer
    permission_classes = [IsAuthenticated]

class MstPromoCodesViewSet(BaseModelViewSet):
    queryset = MstPromoCodes.objects.all()
    serializer_class = MstPromoCodesSerializer
    permission_classes = [IsAuthenticated]

    @action(detail=False,methods=["get"],url_path="active-promocodes",permission_classes=[IsAuthenticated])
    def activePromoCodes(self,request):
        try:
          queryset=MstPromoCodes.objects.filter(cod_rec_status='A')
          serializer=MstActivePromoCodesSerializer(queryset,many=True)
          return success_response("active promocodes retrieved successfully", data=serializer.data)
        except Exception as e:
            return error_response("internal server error", errors=str(e), status_code=status.HTTP_500_INTERNAL_SERVER_ERROR)
        
    @action(detail=True,methods=["patch"],url_path="status",permission_classes=[IsAuthenticated])
    def toggle_status(self, request, pk=None):
        try:
            obj = self.get_object()
            serializer = MstPromoCodesSerializer(obj, data=request.data)
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
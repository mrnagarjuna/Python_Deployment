from rest_framework import viewsets
from ..models import MstAuditChecklist
from ..serializers.mst_auditchecklist_serializer import MstAuditChecklistSerializer
from rest_framework.permissions import IsAuthenticated

class MstAuditChecklistViewSet(viewsets.ModelViewSet):
    queryset = MstAuditChecklist.objects.all()
    serializer_class = MstAuditChecklistSerializer
    permission_classes = [IsAuthenticated]

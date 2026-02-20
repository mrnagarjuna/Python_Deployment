from django.db import models
from utils.constants.choices import REC_STATUS_CHOICES, YES_NO_CHOICES,AUDIT_PERIODICITY_CHOICES,FOREX_CATEGORY,OFFICE_TYPE
from django.utils import timezone


class MstCampaignTypes(models.Model):
    cod_campaign_type = models.CharField(max_length=4)
    cod_rec_status = models.CharField(max_length=1, choices=REC_STATUS_CHOICES, default='A')
    txt_campaign_type_desc = models.CharField(max_length=96, null=True, blank=True)
    flg_sales_campaign = models.CharField(max_length=1, choices=YES_NO_CHOICES, default='N')
    flg_employee_survey = models.CharField(max_length=1, choices=YES_NO_CHOICES, default='N')
    num_min_size_for_reporting = models.SmallIntegerField(default=25)
    flg_dnc_scrub_reqd = models.CharField(max_length=1, choices=YES_NO_CHOICES, default='N')

    flg_structured = models.CharField(max_length=1, choices=YES_NO_CHOICES, null=True, blank=True)
    flg_response_reqd = models.CharField(max_length=1, choices=YES_NO_CHOICES, null=True, blank=True)
    flg_targetlist_mandatory = models.CharField(max_length=1, choices=YES_NO_CHOICES, null=True, blank=True)

    flg_cawi = models.CharField(max_length=1, choices=YES_NO_CHOICES, default='Y')
    flg_cati = models.CharField(max_length=1, choices=YES_NO_CHOICES, default='N')
    flg_capi = models.CharField(max_length=1, choices=YES_NO_CHOICES, default='N')
    flg_default_value = models.CharField(max_length=1, choices=YES_NO_CHOICES, default='N')

    txt_last_maker_id = models.ForeignKey('user.SecUserMaster',on_delete=models.SET_NULL,null=True,blank=True, related_name='%(class)s_maker')
    dat_last_maker = models.DateField(null=True, blank=True)

    txt_last_checker_id = models.ForeignKey('user.SecUserMaster',on_delete=models.SET_NULL,null=True,blank=True, related_name='%(class)s_checker')
    dat_last_checker = models.DateField(null=True, blank=True)

    def save(self, *args, **kwargs):
        if not self.pk:
            self.dat_last_maker = timezone.now().date()
        else:
            self.dat_last_checker = timezone.now().date()
        super().save(*args, **kwargs)

    class Meta:
        db_table = 'mst_campaign_types'
        unique_together = ('cod_campaign_type', 'cod_rec_status')  # composite primary key

class MstCampaignTeamRole(models.Model):
    cod_team_role = models.CharField(max_length=4)
    txt_role_name = models.CharField(max_length=48, null=True, blank=True)
    flg_certification_required = models.CharField(max_length=1,choices=YES_NO_CHOICES,null=True,blank=True)
    flg_rating_allowed = models.CharField(max_length=1,choices=YES_NO_CHOICES,null=True,blank=True)
    flg_default_value = models.CharField( max_length=1, choices=YES_NO_CHOICES, default='N')
    cod_rec_status = models.CharField(max_length=1, choices=REC_STATUS_CHOICES, default='A' )
    txt_last_maker_id = models.ForeignKey('user.SecUserMaster',on_delete=models.SET_NULL,null=True,blank=True,related_name='%(class)s_maker')
    dat_last_maker = models.DateField(null=True, blank=True)
    txt_last_checker_id = models.ForeignKey('user.SecUserMaster',on_delete=models.SET_NULL,null=True,blank=True,related_name='%(class)s_checker')
    dat_last_checker = models.DateField(null=True, blank=True)

    class Meta:
        db_table = "mst_campaign_team_role"
        unique_together = ('cod_team_role', 'cod_rec_status')

    def save(self, *args, **kwargs):
        if not self.pk:
            self.dat_last_maker = timezone.now().date()
        else:
            self.dat_last_checker = timezone.now().date()
        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.cod_team_role} - {self.txt_role_name}"

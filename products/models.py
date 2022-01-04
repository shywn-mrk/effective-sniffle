from django.db import models
from django_prometheus.models import ExportModelOperationsMixin

class Product(ExportModelOperationsMixin('product'), models.Model):
    title = models.CharField(max_length=250)
    price = models.FloatField()

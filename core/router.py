from collections import namedtuple
from django.views.generic import base
from rest_framework import routers
from products.viewsets import ProductViewSet

router = routers.DefaultRouter()

router.register('products', ProductViewSet, basename='products')

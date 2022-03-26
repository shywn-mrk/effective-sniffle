from rest_framework import viewsets
from .models import Product
from .serializers import ProductSerializer

from .metrics import api_products_created

class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

    def create(self, request, *args, **kwargs):
        api_products_created.inc()
        return super().create(request, *args, **kwargs)

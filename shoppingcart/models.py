from django.db import models
from products.models import Products

class OrderItem(models.Model):
    product = models.OneToOneField(Products, on_delete=models.SET_NULL, null=True)

    def  __str__(self):
        return self.product.product_name

class Order(models.Model):
    order_code = models.IntegerField()
    items = models.ManyToManyField(OrderItem)

    def get_cart_items(self):
        return self.items.all()

    def get_cart_total(self):
        return sum([item.products.product_price for item in self.items.all()])

    def __str__(self):
        return '{0} - {1}'.format(self.order_code)
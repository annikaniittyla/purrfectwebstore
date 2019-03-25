from django.shortcuts import render, redirect, get_object_or_404
from django.urls import reverse
from django.template import loader

from products.models import Products
from .models import OrderItem, Order
from django.contrib import messages

def index(request):
    template = loader.get_template('')

def get_user_pending_order(reguest):
    order = Order.objects.all()
    # if order.exists():
    #     return order[1]
    # return 0

"""
This function will add products to the shopping cart after the shopping cart is closer to be ready.
 
def add_to_cart(request, **kwargs):
    product = Products.objects.filter(
    order_item, status = OrderItem.objects.get_or_create(product=product)
    #messages.info(request, "Item added to cart")
    return render(request, 'shoppingcart/order_details.html', {'product': product})


"""        

def delete_from_cart(request, item_id):
    item_to_delete = OrderItem.objects.filter(pk=item_id)
    return redirect(reverse('order_details'))

def store(request, **kwargs):
    existing_order = get_user_pending_order(request)
    context = {
        'order': existing_order
    }
    return render(request, 'shoppingcart/store.html', context)

def checkout(request):
    existing_order = get_user_pending_order(request)
    context = {
        'order': existing_order,
    }
    return render(request, 'shopping_cart/checkout.html', context)



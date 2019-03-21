from django.urls import path, include
from .views import (
    index,
    #get_user_pending_order,
    #add_to_cart,
    delete_from_cart,
    store,
    checkout
)

app_name = 'shoppingcart'

urlpatterns = [
    #path('details/<int:id>/add-to-cart/<int:id>', add_to_cart, name='add-to-cart'),
    #path('add-to-cart/<int:id>', add_to_cart, name='add-to-cart'),
    path('item/delete/<int:id>/', delete_from_cart, name='delete-from-cart'),
    path('store/', store, name='store'),
    path('checkout/', checkout, name='checkout'),

  



]
from django.urls import path, include
from . views import category_details, category_details_all, details
from . views import CategoryCreate, IndexView, CategoryUpdate, CategoryDelete, ProductCreate, ProductUpdate, ProductDelete, search

app_name = 'products'


urlpatterns = [
    path('', IndexView.as_view(), name='index'),

    path('details/<int:id>/', details, name='details'), #path('details/<int:pk>/', DetailView.as_view(), name='details'),
    path('products/add/', ProductCreate.as_view(), name='product-add'),
    path('products/<int:pk>/', ProductUpdate.as_view(), name='product-update'),
    path('products/<int:pk>/delete/', ProductDelete.as_view(), name='product-delete'),
    
    path('category_details_all/', category_details_all, name='category_details_all'),
    path('category_details/<int:id>/', category_details, name='category_details'), #path('category_details/<int:pk>/', CategoryDetailView.as_view(), name='category_details'),
    path('category/add/', CategoryCreate.as_view(), name='category-add'),
    path('category/<int:pk>/', CategoryUpdate.as_view(), name='category-update'),
    path('category/<int:pk>/delete/', CategoryDelete.as_view(), name='category-delete'),
    path('results/', search, name='search'),
]


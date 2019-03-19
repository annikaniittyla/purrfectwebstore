from django.urls import path, include
from . views import category_details, details
from . views import CategoryCreate, IndexView, CategoryUpdate, CategoryDelete, ProductCreate, ProductUpdate, ProductDelete, search
#CategoryDetailView, , DetailView,
#app_name = 'products'
# index, details, 
"""
urlpatterns = [
    path('', index, name='index'),
    path('details/<int:id>/', details, name='details'),
    path('category_details/<int:id>/', category_details, name='category_details'),
    path('products/add/', ProductCreate.as_view(), name='product-add'),
];
"""
urlpatterns = [
    path('', IndexView.as_view(), name='index'),

    path('details/<int:id>/', details, name='details'), #path('details/<int:pk>/', DetailView.as_view(), name='details'),
    path('products/add/', ProductCreate.as_view(), name='product-add'),
    path('product/<int:pk>/', ProductUpdate.as_view(), name='product-update'),
    path('product<int:pk>/delete/', ProductDelete.as_view(), name='product-delete'),
    
    path('category_details/<int:id>/', category_details, name='category_details'), #path('category_details/<int:pk>/', CategoryDetailView.as_view(), name='category_details'),
    path('category/add/', CategoryCreate.as_view(), name='category-add'),
    path('category/<int:pk>/', CategoryUpdate.as_view(), name='category-update'),
    path('category<int:pk>/delete/', CategoryDelete.as_view(), name='category-delete'),
    path('results/', search, name='search'),
]

"""
# urlpatterns = [
#     path('admin/', admin.site.urls),
#     path('products/', include('products.urls'))
# ]

"""
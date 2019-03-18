from django.urls import path, include
#from . views import category_details
from . views import CategoryCreate, IndexView, DetailView, CategoryDetailView

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
    path('details/<int:pk>/', DetailView.as_view(), name='details'),
    path('category_details/<int:pk>/', CategoryDetailView.as_view(), name='category_details'),
    path('category/add/', CategoryCreate.as_view(), name='category-add'),
    
]

"""
# urlpatterns = [
#     path('admin/', admin.site.urls),
#     path('products/', include('products.urls'))
# ]

"""
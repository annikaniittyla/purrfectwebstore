from django.urls import path, include
from .views import index, details, category_details

urlpatterns = [
    path('', index, name='index'),
    path('details/<int:id>/', details, name='details'),
    path('category_details/<int:id>/', category_details, name='category_details')

];

# urlpatterns = [
#     path('admin/', admin.site.urls),
#     path('products/', include('products.urls'))
# ]
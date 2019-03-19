from django.contrib import admin
from . models import Products, Category

# class CategryAdmin(admin.ModelAdmin):
#     list_display = ['category_name', 'category_slug']
#     prepopulated_fields = {'category_slug': ('name',)}

admin.site.register(Category)
admin.site.register(Products)

# class ProductAdmin(admin.ModelAdmin):
#     list_dispaly = ['product_name', 'product_slug', 'product_category', 'product_price', 'product_stock','product_available']
#     list_filter = ['product_available', 'product_category']
#     list_editable = ['product_price', 'product_stock', 'product_available']
#     prepopulated_field = {'slug': ('product_name',)}


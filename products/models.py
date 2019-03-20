from django.db import models
from django.urls import reverse

class Category(models.Model):
    category_name = models.CharField(max_length=250) #db_index=True)
    category_slug = models.SlugField(max_length=200, db_index=True, blank=True, null=True, unique=True)
    category_logo = models.ImageField(upload_to = 'pic_folder/', default ='pic_folder/None/no-img.jpg')

    class Meta:
        ordering = ('category_name',)
        verbose_name = 'category'
        verbose_name_plural = "categories"

    def get_absolute_url(self):
         return reverse('category_details', kwargs={self.pk})

    def __str__(self):
        return self.category_name

    @property
    def get_products(self):
        return Products.objects.filter(category_name=self.category_name)
    

class Products(models.Model):
    category = models.ForeignKey(Category, null=True, on_delete=models.CASCADE)
    product_name = models.CharField(max_length=250, db_index=True)
    product_slug = models.SlugField(max_length=200, db_index=True, null=True)
    product_code = models.IntegerField()
    product_description = models.TextField(blank=True)
    product_image = models.ImageField(upload_to = 'pic_folder/', default ='pic_folder/None/no-img.jpg')
    product_price = models.DecimalField(max_digits=10, decimal_places=2, null=True)
    product_stock = models.PositiveIntegerField(null=True)
    product_available = models.BooleanField()

    class Meta:
        ordering = ('product_name',)
        index_together = (('id', 'product_slug'),)
        verbose_name = 'product'
        verbose_name_plural = "products"

    def get_absolute_url(self):
         return reverse('details', kwargs={self.pk})

    def __str__(self):
        return self.product_name

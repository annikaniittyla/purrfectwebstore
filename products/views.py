from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, Http404
from django.views import generic
from django.views.generic import View, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.db.models import Q
from django.core.paginator import Paginator
from .models import Category, Products
from .forms import UserForm, ProductAddForm

class IndexView(generic.ListView):
    template_name = 'products/index.html'
    context_object_name = 'categories'
    
    def get_queryset(self):
        return Category.objects.all()

class CategoryCreate(CreateView):
    model = Category
    fields = ['category_name', 'category_slug', 'category_logo']
class CategoryUpdate(UpdateView):
    model = Category
    fields = ['category_name', 'category_slug', 'category_logo']

class CategoryDelete(DeleteView):
    model = Category
    success_url = reverse_lazy('products:index')
class ProductCreate(CreateView):
    model = Products
    #fields = ['product_name', 'product_slug', 'product_code', 'product_description', 'product_price', 'product_stock', 'product_image']
    #fields = ['category','product_name', 'product_slug', 'product_code', 'product_description', 'product_price', 'product_stock', 'product_available', 'product_image']
    form_class = ProductAddForm
"""
    Attemp to fix product-add functions so that a category can be chosen.
    
    def form_valid(self):
        response = super(ProductCreate, self).form_vallid()
        self.object.categories = self.form.cleaned_data['category']
        return response
        
        form.instance.category_name = self.Product.product_name            
        return super(ProductCreate, self).category_fields(form)
        
"""
class ProductUpdate(UpdateView):
    model = Products
    fields = ['category', 'product_name', 'product_slug', 'product_code', 'product_description', 'product_price', 'product_stock', 'product_available', 'product_image']

class ProductDelete(DeleteView):
    model = Products
    success_url = reverse_lazy('products:index')
    
class UserFormView(View):
    form_class = UserForm
    template_name = 'products/registration_form.html'

def category_details(request, id):
    category = Category.objects.get(id=id)
    products = Products.objects.filter(category=category)

    context = {
        'products': products
    }
    return render(request, 'products/category_details.html', context)

def category_details_all(request):
    products = Products.objects.all()

    context = {
        'products': products
    }
    return render(request, 'products/category_details.html', context)

def search(request):
    query = request.GET.get('q')
    results = Products.objects.filter(Q(product_name__icontains=query) | Q(product_description__icontains=query) | Q(product_code__icontains=query))
    pages = Paginator(results, 10)    
    products = pages.get_page(pages)   
    return render(request, 'products/product_list.html', {'products': products})

def details(request, id):
    try:
        product = Products.objects.get(id=id)
        context = {'product': product}        
    except Products.DoesNotExist:
        raise Http404("This item does not exist.")
    return render(request, 'products/details.html', context)
  


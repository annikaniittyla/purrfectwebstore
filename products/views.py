from django.shortcuts import render
from django.http import HttpResponse, Http404
from .models import Category, Products
from django.views import generic
from django.views.generic import CreateView, UpdateView, DeleteView

class IndexView(generic.ListView):
    template_name = 'products/index.html'
    context_object_name = 'categories'
    
    def get_queryset(self):
        return Category.objects.all()

class DetailView(generic.DetailView):
    model = Products
    template_name = 'products/details.html'

class CategoryDetailView(generic.DetailView):
    model = Category    
    template_name = 'products/category_details.html'   


class CategoryCreate(CreateView):
    model = Category
    fields = ['category_name', 'category_slug', 'category_logo']


"""
def index(request):
    categories = Category.objects.all()    
    context = {
        'title': 'Choose a category',
        "categories" : categories
    }
    return render(request, 'products/index.html', context)


def details(request, id):
    try:
        product = Products.objects.get(id=id)
        context = {'product': product}        
    except Products.DoesNotExist:
        raise Http404("This item does not exist.")
    return render(request, 'products/details.html', context)
  

def category_details(request, id):
    category = Category.objects.get(id=id)
    products = Products.objects.filter(category=category)

    context = {
        'products': products
    }
    return render(request, 'products/category_details.html', context)
"""  
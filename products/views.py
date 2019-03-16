from django.shortcuts import render
from django.http import HttpResponse
from .models import Category, Products



def index(request):
    #return HttpResponse('Hello from products')
    categories = Category.objects.all()
    context = {
        'title': 'Choose a category',
        "categories" : categories
    }

    return render(request, 'products/index.html', context)



def details(request, id):
    product = Products.objects.get(id=id)

    context = {
        'product': product
    }

    return render(request, 'products/details.html', context)

    
def category_details(request, id):
    category = Category.objects.get(id=id)
    products = Products.objects.filter(category=category)

    context = {
        'products': products
    }

    return render(request, 'products/category_details.html', context)
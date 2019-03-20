from django.contrib.auth.models import User
from django import forms
from django.forms import ModelChoiceField
from . models import Category, Products

class UserForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)


    class Meta:
        model = User
        fields = ['username', 'email', 'password']

class ProductAddForm(forms.ModelForm):
    class Meta:
        model = Products
        fields = ['category', 'product_name', 'product_slug', 'product_code', 'product_description', 'product_price', 'product_stock', 'product_available', 'product_image']
        category = forms.ModelChoiceField(label='category', widget=forms.Select, queryset=Category.objects.all())

    """
    def __init__(self, Category):
        category_names = category_names.pop('category_names', None)
        super(forms.ChoiceForm, self).__init__(Category)
        self.fields['category_names'] = ModelChoiceField(queryset=Category.objects.filter(category_names=category_names)),
        empty_label = "Choose a category"
    """
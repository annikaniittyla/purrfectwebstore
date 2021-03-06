# Generated by Django 2.1.7 on 2019-03-15 17:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('category_name', models.CharField(db_index=True, max_length=250)),
                ('category_slug', models.SlugField(max_length=200, unique=True)),
            ],
            options={
                'verbose_name': 'category',
                'verbose_name_plural': 'categories',
                'ordering': ('category_name',),
            },
        ),
        migrations.AlterModelOptions(
            name='products',
            options={'ordering': ('product_name',)},
        ),
        migrations.AddField(
            model_name='products',
            name='product_available',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='products',
            name='product_price',
            field=models.DecimalField(decimal_places=2, max_digits=10, null=True),
        ),
        migrations.AddField(
            model_name='products',
            name='product_slug',
            field=models.SlugField(max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='products',
            name='product_stock',
            field=models.PositiveIntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='products',
            name='product_description',
            field=models.TextField(blank=True),
        ),
        migrations.AlterField(
            model_name='products',
            name='product_image',
            field=models.ImageField(blank=True, upload_to='products/%Y/%m/%d'),
        ),
        migrations.AlterField(
            model_name='products',
            name='product_name',
            field=models.CharField(db_index=True, max_length=250),
        ),
        migrations.AddField(
            model_name='products',
            name='category',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='products', to='products.Category'),
        ),
        migrations.AlterIndexTogether(
            name='products',
            index_together={('id', 'product_slug')},
        ),
    ]

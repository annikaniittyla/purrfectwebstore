# Generated by Django 2.1.7 on 2019-03-16 15:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0006_auto_20190316_1328'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='category_logo',
            field=models.ImageField(default='pic_folder/None/no-img.jpg', upload_to='pic_folder/'),
        ),
        migrations.AlterField(
            model_name='products',
            name='product_image',
            field=models.ImageField(default='pic_folder/None/no-img.jpg', upload_to='pic_folder/'),
        ),
    ]

# Generated by Django 3.2.8 on 2021-10-11 09:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0002_order_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='static/productimg'),
        ),
    ]
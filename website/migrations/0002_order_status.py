# Generated by Django 3.2.8 on 2021-10-08 09:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='status',
            field=models.CharField(default='PENDING', max_length=20),
        ),
    ]

# Generated by Django 3.2.7 on 2021-12-19 02:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('wedding', '0004_alter_service_description'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='avatar',
            field=models.ImageField(upload_to='static/uploads/%Y/%m'),
        ),
    ]

# Generated by Django 3.2.7 on 2021-12-19 03:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('wedding', '0006_alter_user_avatar'),
    ]

    operations = [
        migrations.AlterField(
            model_name='weddinghalls',
            name='image',
            field=models.ImageField(default=None, upload_to='static/wedding-hall/%Y/%m'),
        ),
    ]

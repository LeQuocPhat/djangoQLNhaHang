# Generated by Django 3.2.7 on 2021-12-10 13:51

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wedding', '0002_bankaccount_comment_food_menu_service_shift_system_wedding_weddinghalls'),
    ]

    operations = [
        migrations.AlterField(
            model_name='service',
            name='description',
            field=ckeditor.fields.RichTextField(),
        ),
    ]
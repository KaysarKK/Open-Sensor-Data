# Generated by Django 2.0 on 2019-04-04 07:03

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0010_auto_20190404_1303'),
    ]

    operations = [
        migrations.RenameField(
            model_name='device',
            old_name='city1',
            new_name='city',
        ),
    ]

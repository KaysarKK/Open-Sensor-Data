# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2019-04-03 21:53
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0003_auto_20190404_0349'),
    ]

    operations = [
        migrations.AddField(
            model_name='city',
            name='Name',
            field=models.CharField(default='UNKNOWN', max_length=20),
        ),
    ]
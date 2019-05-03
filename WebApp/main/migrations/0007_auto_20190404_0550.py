# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2019-04-03 23:50
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.datetime_safe


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0006_auto_20190404_0528'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='info',
            name='datetime',
        ),
        migrations.AddField(
            model_name='info',
            name='date',
            field=models.DateTimeField(blank=True, default=django.utils.datetime_safe.datetime.now),
        ),
    ]
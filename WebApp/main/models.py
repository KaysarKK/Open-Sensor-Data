from django.db import models


# Create your models here.
from django.utils.datetime_safe import datetime


class City(models.Model):
	Name = models.CharField(max_length=20, default="UNKNOWN")
	Country = models.CharField(max_length=100)
	Info = models.CharField(max_length=1000)
	Photo = models.CharField(max_length=1000)
	def __str__(self):
		return self.Name + ', ' + self.Country


class Device(models.Model):
    place = models.CharField(max_length=200, default="UNKNOWN")
    city = models.ForeignKey(City, on_delete=models.CASCADE)
    lon = models.CharField(max_length=200, default="UNKNOWN")
    lat = models.CharField(max_length=200, default="UNKNOWN")
    is_fav = models.BooleanField(default=False)
    def __str__(self):
        return self.place


class Info(models.Model):
    device = models.ForeignKey(Device, on_delete=models.CASCADE)
    temp = models.IntegerField()
    humidity = models.IntegerField()
    date = models.DateTimeField(default=datetime.now, blank=True)

    def __str__(self):
        return 'Temperature is ' + str(self.temp) + ', Humidity level is ' + str(self.humidity) + ' at ' + str(self.date) + '.'

import 'package:flutter/material.dart';
import 'package:climate_app/services/location.dart';
import 'package:climate_app/services/networking.dart' as networkHelper;

class WeatherModel {
  Future<dynamic> getCityWeather(cityName) async {
    var weatherData = await networkHelper.getCityWeatherData(cityName);
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    var weatherData = await networkHelper.getLocationWeatherData(
        location.latitude, location.longitude);
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  AssetImage getImage(int condition) {
    if (condition < 200) {
      return AssetImage('images/location_background.jpg');
    } else if (condition < 600) {
      return AssetImage('images/rainy.jpg');
    } else if (condition < 700) {
      return AssetImage('images/snowy.jpg');
    } else if (condition < 800) {
      return AssetImage('images/super_cloudy.jpg');
    } else if (condition == 800) {
      return AssetImage('images/clear.jpg');
    } else if (condition < 804) {
      return AssetImage('images/cloudy.jpg');
    } else if (condition == 804) {
      return AssetImage('images/super_cloudy.jpg');
    } else {
      return AssetImage('images/location_background.jpg');
    }
  }
}

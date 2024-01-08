import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

import '../core/utils/image_constant.dart';

const openWeatherMap = 'api.openweathermap.org';
const openWeatherMapPath = 'data/2.5/weather';
const apiKey = '3e683d4051eb5acad1b2fa4b1dddc7b6';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        site: openWeatherMap,
        path: openWeatherMapPath,
        parameters: {
          'q': cityName,
          'appid': apiKey,
          'units': 'metric',
        });
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        site: openWeatherMap,
        path: openWeatherMapPath,
        parameters: {
          'lat': location.latitude.toString(),
          'lon': location.longitude.toString(),
          'appid': apiKey,
          'units': 'metric',
        });

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition, String icon) {
    if (condition < 300) {
      return 'images/storm.png';
    } else if (condition < 400) {
      return 'images/drizzle.png';
    } else if (condition < 600) {
      return 'images/rain.png';
    } else if (condition < 700) {
      return 'images/snow.png';
    } else if (condition < 800) {
      return 'images/breeze.png';
    } else if (condition == 800) {
      if (icon[2] == 'd') {
        return 'images/sun.png';
      } else {
        return 'images/moon.png';
      }
    } else if (condition <= 804) {
      return 'images/clouds.png';
    } else {
      return ImageConstant.imageNotFound;
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
}

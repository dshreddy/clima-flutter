import 'package:clima/screens/city_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/core/app_export.dart';
import 'package:clima/widgets/custom_image_view.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:intl/intl.dart';
import 'package:clima/services/weather.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key, required this.locationWeather});
  final dynamic locationWeather;

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weatherModel = WeatherModel();
  final now = DateFormat.yMMMMd('en_US').format(DateTime.now());
  String? weatherIcon;
  int? temperature;
  String? cityName;
  int? humidity;
  String? description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.locationWeather == null) {
      updateUI(weatherData: widget.locationWeather, locationError: true);
    } else {
      updateUI(weatherData: widget.locationWeather, locationError: false);
    }
  }

  void updateUI({required dynamic weatherData, required bool locationError}) {
    setState(() {
      if (locationError == true) {
        alert(
            "PLEASE ENABLE LOCATION PERMISSIONS FOR THIS SITE OR USE THE 'Click here to change city' button'");
      }
      if (weatherData == null) {
        alert("WEATHER DATA IS NOT FOUND FOR");
        temperature = 0;
        cityName = '';
        humidity = 0;
        description = "Error";
        weatherIcon = ImageConstant.imageNotFound;
        return;
      }
      double temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      cityName = weatherData['name'];
      humidity = weatherData["main"]["humidity"];
      description = weatherData["weather"][0]["main"];
      var condition = weatherData['weather'][0]['id'];
      weatherIcon = weatherModel.getWeatherIcon(
          condition, weatherData['weather'][0]['icon']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(1, 0),
                end: const Alignment(0, 1),
                colors: [
                  appTheme.cyan300,
                  appTheme.blueA200,
                ],
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // Top Bar
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        const Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.black,
                            // shadows: [
                            //   Shadow(color: Colors.black, blurRadius: 15.0)
                            // ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "$cityName",
                              style: TextStyle(
                                // shadows: const [
                                //   Shadow(
                                //     blurRadius: 3.0,
                                //     color: Colors.white,
                                //   ),
                                // ],
                                color: appTheme.whiteA700,
                                fontSize: 24,
                                fontFamily: 'Overpass',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(flex: 2, child: SizedBox()),
                      ],
                    ),
                  ),
                  // Weather Symbol
                  Expanded(
                    flex: 3,
                    child: Image(
                      image: AssetImage(weatherIcon!),
                      alignment: Alignment.center,
                    ),
                  ),
                  // Weather Report
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: OutlineGradientButton(
                        padding: const EdgeInsets.all(2),
                        strokeWidth: 2,
                        gradient: LinearGradient(
                          begin: const Alignment(0.7, 0.23),
                          end: const Alignment(0, 1),
                          colors: [
                            appTheme.whiteA700.withOpacity(0.7),
                            appTheme.gray400B2,
                          ],
                        ),
                        corners: const Corners(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: AppDecoration.outline.copyWith(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    now,
                                    style: TextStyle(
                                      shadows: const [
                                        Shadow(
                                          blurRadius: 3.0,
                                          color: Colors.white,
                                        ),
                                      ],
                                      color: appTheme.whiteA700,
                                      fontSize: 18,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Stack(
                                    children: [
                                      Text(
                                        "$temperature °C",
                                        style: TextStyle(
                                          shadows: const [
                                            Shadow(
                                              blurRadius: 3.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                          color: appTheme.whiteA700,
                                          fontSize: 50,
                                          fontFamily: 'Overpass',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 27),
                              Row(
                                children: <Widget>[
                                  Expanded(child: SizedBox()),
                                  Text(
                                    "$description",
                                    style: TextStyle(
                                      color: appTheme.whiteA700,
                                      fontSize: 18,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: <Widget>[
                                  Expanded(child: SizedBox()),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgHum,
                                    height: 24,
                                    width: 24,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Hum     |      $humidity%",
                                    style: TextStyle(
                                      color: appTheme.whiteA700,
                                      fontSize: 18,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                ],
                              ),
                              const SizedBox(height: 9),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Location Button
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              var typedName = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const CityScreen();
                                  },
                                ),
                              );
                              if (typedName != null) {
                                var weatherData = await weatherModel
                                    .getCityWeather(typedName);
                                if (weatherData == null) {
                                  //weather data not found for entered city up
                                  alert(
                                      "WEATHER DATA IS NOT FOUND FOR $typedName");
                                  return;
                                }
                                updateUI(
                                    weatherData: weatherData,
                                    locationError: false);
                              } else {
                                //cityName can't be null pop up
                                alert("CITY NAME CAN'T BE NULL");
                              }
                            },
                            child: Text(
                              "Click Here To Change City",
                              style: TextStyle(
                                color: appTheme.blueA200,
                                fontSize: 24,
                                fontFamily: 'Overpass',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void alert(String desc) {
    Alert(
      style: AlertStyle(
        backgroundColor: appTheme.blueA200,
        descStyle: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 24,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
      ),
      context: context,
      desc: desc,
      buttons: [
        DialogButton(
            color: appTheme.whiteA700,
            child: const Text(
              "OK",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    ).show();
  }
}

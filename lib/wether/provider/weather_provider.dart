import 'package:flutter/cupertino.dart';
import 'package:weather_app/wether/modal/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  List<WeatherModel> infoList = [
    WeatherModel(
        city: "Delhi",
        image: "assets/images/sun.svg",
        country: "India",
        temp: 35),
    WeatherModel(
        city: "Mumbai",
        image: "assets/images/rain.svg",
        country: "India",
        temp: 24),
    WeatherModel(
        city: "Toronto",
        image: "assets/images/rain.svg",
        country: "Canada",
        temp: 24),
    WeatherModel(
        city: "Kyiv",
        image: "assets/images/cloud.svg",
        country: "Ukraine",
        temp: 24),
    WeatherModel(
        city: "Warsaw",
        image: "assets/images/rain.svg",
        country: "Poland",
        temp: 19),
    WeatherModel(
        city: "Prague",
        image: "assets/images/sun.svg",
        country: "Czech Rep.",
        temp: 32),
    WeatherModel(
        city: "Liviv",
        image: "assets/images/cloud.svg",
        country: "Ukraine",
        temp: 22),
    WeatherModel(
        city: "Moscow",
        image: "assets/images/sun.svg",
        country: "Russia",
        temp: 30),
  ];
}

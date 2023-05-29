import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/wether/provider/weather_provider.dart';
import 'package:weather_app/wether/view/dash_screen.dart';
import 'package:weather_app/wether/view/info_screen.dart';
import 'package:weather_app/wether/view/login%20screen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          'dash': (context) => DashScreen(),
          'info': (context) => InfoScreen(),
        },
      ),
    ),
  ));
}

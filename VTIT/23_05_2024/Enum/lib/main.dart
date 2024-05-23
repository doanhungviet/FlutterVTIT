import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
        ),
        body: const Center(
          child: WeatherIcon(weather: Weather.snowy),
        ),
      ),
    );
  }
}

enum Weather {
  sunny,
  cloudy,
  rainy,
  snowy,
}

class WeatherIcon extends StatelessWidget {

  final Weather weather;

  const WeatherIcon({required this.weather});

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    switch (weather){
      case Weather.sunny:
        iconData = Icons.wb_sunny;
        break;
      case Weather.cloudy:
        iconData = Icons.wb_cloudy;
        break;
      case Weather.rainy:
        iconData = Icons.beach_access;
        break;
      case Weather.snowy:
        iconData = Icons.ac_unit;
        break;
    }
    return Icon(iconData,size: 100);
  }
}


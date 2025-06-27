import 'package:flutter/material.dart';
import 'package:weather_app/data/data_source/remote_datasource.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/domain/use_case/get_weather_by_city_name.dart';
import 'package:weather_app/presentaion/screens/weather_screen.dart';

import 'domain/repository/base_weather_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}



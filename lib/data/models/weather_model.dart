import 'package:weather_app/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    required super.id,
    required super.main,
    required super.description,
    required super.cityName,
    required super.pressure,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json['id'],
      main: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
      cityName: json['name'],
      pressure: json['main']['pressure'],
    );
  }
}

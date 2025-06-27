import 'package:dio/dio.dart';
import 'package:weather_app/core/utils/constances.dart';
import 'package:weather_app/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  final Dio dio = Dio();

  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      final response = await dio.get(
        '${AppConstant.baseUrl}/weather?q=$cityName&appid=${AppConstant.appKey}',
      );
      print("Raw API response: ${response.data}");
      if (response.statusCode == 200) {
        return WeatherModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load weather data: ${response.statusCode}');
      }
    } catch (error) {
      print("Error in RemoteDataSource: $error");
      throw Exception('Error fetching weather: $error');
    }
  }
}
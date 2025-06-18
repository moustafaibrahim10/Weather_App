import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repository/base_weather_repository.dart';

import '../data_source/remote_datasource.dart';

class WeatherRepository implements BaseWeatherRepository
{
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName)async {
    try{
      final weather= await baseRemoteDataSource.getWeatherByCityName(cityName);
      return weather!;
    }catch(error)
    {
      print("error in weather repo. : $error");
      rethrow;
    }
  }

}
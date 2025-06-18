import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repository/base_weather_repository.dart';

class GetWeatherByCityName{

  final BaseWeatherRepository repository;

  GetWeatherByCityName(this.repository);

  Future<Weather> execute(String name) async
  {
      return await repository.getWeatherByCityName(name);
  }
}
import 'dart:ui_web';

import 'package:dio/dio.dart';
import 'package:weather_app/core/utils/constances.dart';
import 'package:weather_app/data/models/weather_model.dart';

abstract class BaseRemoteDataSource
{
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource
{
  Dio dio=Dio();
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async
  {
    return await dio.get('${AppConstant.baseUrl}/weather?q=cairo&appid=${AppConstant.appKey}').then((value)
    {
      WeatherModel.fromJson(value.data);
    }).catchError((error)
    {
      print("Error is $error");
      return null;
    });

  }


}
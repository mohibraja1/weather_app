import 'dart:async';

import 'package:weather_app/model/services/base_service.dart';
import 'package:weather_app/model/services/api_service.dart';

import 'Weather.dart';

class WeatherRepository {

  ApiService apiService = ApiService();

  Future<Weather> getWeatherUpdate() async {
    dynamic response = await apiService.getResponse('');

    print('response is ---- $response');

    Weather weather = Weather.fromJson(response);

    print('start waiting for 3 seconds to complete');

    Timer(Duration(seconds: 3),
    () =>{
      print('waiting for 3 seconds to complete')
    });

    print('completed waiting for 3 seconds to complete');

    return weather;
  }
}

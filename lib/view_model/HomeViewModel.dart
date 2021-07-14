

import 'package:stacked/stacked.dart';
import 'package:weather_app/model/Weather.dart';
import 'package:weather_app/model/apis/api_response.dart';
import 'package:weather_app/model/weather_repository.dart';
import 'package:weather_app/view_model/MyBaseViewModel.dart';

class HomeViewModel extends MyBaseViewModel{

  ApiResponse _apiResponse = ApiResponse.initial('Fetching Data...');
  ApiResponse get response {
    return _apiResponse;
  }

  initialise(){
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    _apiResponse = ApiResponse.loading('Fetching artist data');
    notifyListeners();
    try {

      Weather weather = await WeatherRepository().getWeatherUpdate();
      _apiResponse = ApiResponse.completed(weather);

    } catch (e) {
      _apiResponse = ApiResponse.error(e.toString());
      print(e);
    }
    notifyListeners();
  }

}
import 'package:weather_app/utils/AppConstants.dart';

abstract class BaseService {
  final String BaseUrl = '';

  final String weatherUrl =
      'http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=${AppConstants.apiKey}';

  /*Future<dynamic> getResponse(String url);*/
}

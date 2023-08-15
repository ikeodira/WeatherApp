import 'dart:convert';

import 'package:weathapp/model/weather_dart_current.dart';

import '../model/weather_data.dart';
import 'package:http/http.dart' as http;
import 'api_key.dart';

class FetchWeatherAPI {
  late WeatherData weatherData;
  //Processing the data from response -> to json
  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiUrl(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonString));
    return weatherData;
  }

  String apiUrl(var lat, var lon) {
    String url;
    url =
        "//api.openweathermap.org/data/3.0/onecall?lat}=$lat&lon=$lon&appid=$apiKey&units=metric&exclude=minutely}";
    return url;
  }
}

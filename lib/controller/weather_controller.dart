import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_with_provider/model/weather_model.dart';

class WeatherController extends ChangeNotifier {
  String cityName = "Karachi";
  static String _apikey = "2dba79d2ea3efcd5c47300a3c61edfaa";

  weatherCall() {
    fetchweatherdata();
    notifyListeners();
  }

  searchCity(String name) {
    cityName = name;
    fetchweatherdata();
    notifyListeners();
  }

  Future<WeatherData> fetchweatherdata() async {
    Response response;
    var dio = Dio();
    response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$_apikey');

    print(response.data.toString());
    // var data = jsonDecode(response.data.toString());
    print("===>");
    // print(data);
    // print(data);
    if (response.statusCode == 200) {
      WeatherData weatherResult = WeatherData.fromJson(response.data);
      return weatherResult;
    } else {
      return WeatherData();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app_with_provider/controller/weather_controller.dart';
import 'package:weather_app_with_provider/features/homescreen/presentation/homescreen.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_with_provider/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BMI Calculator',
        theme: ThemeData(primaryColor: Colors.blue),
        home: const SplashScreen(),
      ),
    );
  }
}

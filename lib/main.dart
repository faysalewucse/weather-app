import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/pages/homepage/homepage.dart';
import 'package:weather_app_steadfastit/theme/light_theme.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: PRIMARY, // navigation bar color
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const Homepage(),
    );
  }
}
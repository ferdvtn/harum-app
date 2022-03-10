import 'package:flutter/material.dart';
import 'package:harum_app/constants/color_constant.dart';
import 'package:harum_app/screens/home_screen.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: iBackgroundColor,
        appBarTheme: const AppBarTheme(backgroundColor: iBackgroundColor),
      ),
      home: const HomeScreen(),
    );
  }
}

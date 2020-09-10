import 'package:flutter/material.dart';
import 'input_page.dart';
import 'home.dart';
import 'setting.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
      initialRoute: '/',
      routes: {
        // '/'routeに遷移する時にHomeScreen widgetをビルド。
        // '/': (context) => HomeScreen(),
        // 同じく'/setting'routeに遷移する時にSettingScreen widgetをビルド。
        '/setting': (context) => SettingScreen(),
      },
    );
  }
}

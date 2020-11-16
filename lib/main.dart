import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pedahl web',
      theme: ThemeData(
        primaryColor: kWhiteColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Noodle',
      ),
      home: HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:googleservices/screens/main_screen.dart';
import 'package:googleservices/screens/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreen("google"),
    );
  }
}

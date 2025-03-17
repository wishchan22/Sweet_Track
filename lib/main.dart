import 'package:flutter/material.dart';
import 'package:sweet_track/screens/wrapper.dart';
import 'welcome_screen.dart';
import 'sign_in_or_sign_up_screen.dart';
//import 'screens/sign_in_screen.dart';
//import 'screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}
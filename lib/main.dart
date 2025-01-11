import 'package:flutter/material.dart';
import 'package:mont_viva/onboarding.dart';
import 'package:mont_viva/splashscreen.dart';
import 'package:mont_viva/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      routes: {
        '/splashscreen': (context) => const Splashscreen(),
        '/onboarding': (context) => const OnBoarding(),
        '/home': (context) => const Home(),
      },
    );
  }
}

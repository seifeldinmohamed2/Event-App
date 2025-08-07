import 'package:flutter/material.dart';
import 'Onboarding_screens/onboarding_screenes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   // Future.delayed(const Duration(seconds: 1), () {
   //   Navigator.pushReplacementNamed(context, SplashScreen);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const OnboardingScreenes(),
        // "/splash": (context) => const SplashScreen(),
      },
    );
    }
  }
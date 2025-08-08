import 'package:evently_app/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'Onboarding_screens/onboarding_screenes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreenes(),
        // "/splash": (context) => const SplashScreen(),
      },
    );
    }
  }
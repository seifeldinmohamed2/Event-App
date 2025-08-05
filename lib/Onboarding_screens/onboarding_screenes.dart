import 'package:flutter/material.dart';

import '../splash_screen/splash_screen.dart';
import 'OnboardingScreen3.dart';
import 'OnboardingScreen4.dart';
import 'onboarding_screen1.dart';
import 'onboarding_screen2.dart';

class OnboardingScreenes extends StatefulWidget {
  const OnboardingScreenes({super.key});

  @override
  State<OnboardingScreenes> createState() => _OnboardingScreenesState();
}

class _OnboardingScreenesState extends State<OnboardingScreenes> {
  final PageController _controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 4;
            });
          },
          children: const [
            SplashScreen(),
            OnboardingScreen1(),
            OnboardingScreen2(),
            OnboardingScreen3(),
            OnboardingScreen4(),
          ],
        )
    );
  }
}

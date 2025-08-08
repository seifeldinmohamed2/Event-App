import 'package:flutter/material.dart';

import '../theme_of_app/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ofwhite,
      body: Center(
        child: Container(
          child:
          Image.asset('assets/images/Logo.png',fit: BoxFit.cover,),
        ),
      ),
      bottomNavigationBar:
         Row(
          children: [
            Expanded(child: Image.asset('assets/images/Group 2 (3).png')),
          ],
        ),
    );
  }
}

import 'package:flutter/material.dart';

import '../theme_of_app/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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

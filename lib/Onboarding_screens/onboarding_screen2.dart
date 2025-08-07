import 'package:evently_app/theme_of_app/app_colors.dart';
import 'package:flutter/material.dart';

import 'OnboardingScreen3.dart';
import 'onboarding_screen1.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ofwhite,

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:100,
            ),
            Container(
              child: Center(child: Image.asset('assets/images/onbord2.png')),

            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: FilledButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const OnboardingScreen1()),
                          );                      },
                        style: FilledButton.styleFrom(
                          foregroundColor: AppColors.ofwhite,
                          backgroundColor: AppColors.ofwhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Image.asset('assets/images/Group 10.png'),
                      ),
                    )
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/Group 5.png'),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: FilledButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const OnboardingScreen3()),
                          );                      },
                        style: FilledButton.styleFrom(
                          foregroundColor: AppColors.ofwhite,
                          backgroundColor: AppColors.ofwhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Image.asset('assets/images/Group 6.png'),
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

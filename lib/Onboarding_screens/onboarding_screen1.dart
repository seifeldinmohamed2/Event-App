import 'package:evently_app/theme_of_app/app_colors.dart';
import 'package:flutter/material.dart';

import 'onboarding_screen2.dart';


class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: AppColors.ofwhite,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(child: Image.asset('assets/images/onbord.png')),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Image.asset('assets/images/being-creative.png'),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Personalize Your Experience",
                style: TextStyle(
                  color: AppColors.periwinkle,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/Language.png'),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/theme.png'),

              ),

            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: FilledButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnboardingScreen2()),
                  );

                },
                    style: FilledButton.styleFrom(
                        foregroundColor: AppColors.ofwhite,
                        backgroundColor: AppColors.periwinkle,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                        )
                    ),
                    child: Text("Let’s Start")),
              ),
            ],
          )
        ],
      ),
       //

    );
  }
}

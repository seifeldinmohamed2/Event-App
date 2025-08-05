import 'package:evently_app/login_screens/register.dart';
import 'package:evently_app/theme_of_app/app_colors.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ofwhite,
      appBar: AppBar(
        title: Center(child: Text('Forget Password')),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/images/change-password.png'),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,

            child: FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Register()),
                );              },
              style: FilledButton.styleFrom(
                foregroundColor: AppColors.ofwhite,
                backgroundColor: AppColors.periwinkle,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "Reset Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

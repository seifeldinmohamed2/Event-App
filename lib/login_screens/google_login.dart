import 'package:evently_app/login_screens/register.dart';
import 'package:evently_app/theme_of_app/app_colors.dart';
import 'package:flutter/material.dart';

import '../home_screens/home_screen.dart';
import 'forget_password.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ofwhite,
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Container(child: Image.asset('assets/images/Logo.png')),
          ),
          SizedBox(height: 10),
          Container(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/email.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.gray, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.gray, width: 1),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/password.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                suffixIcon: Icon(Icons.visibility_off_outlined),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.gray, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.gray, width: 1),
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForgetPassword()),
                );
              },
              child: Text(
                "Forget Password?",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: AppColors.periwinkle,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,

            child: FilledButton(
              onPressed: () {
            Navigator.push(
               context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
                  },
              style: FilledButton.styleFrom(
                foregroundColor: AppColors.ofwhite,
                backgroundColor: AppColors.periwinkle,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                },
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    color: AppColors.periwinkle,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    endIndent: 10,
                  ),
                ),
                Text("Or", style: TextStyle(color: Colors.black)),
                Expanded(
                  child: Divider(color: Colors.grey, thickness: 1, indent: 10),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: FilledButton(
              onPressed: () {
                //  Navigator.pushNamed(context, HomeScreen.routename);
              },
              style: FilledButton.styleFrom(
                foregroundColor: AppColors.periwinkle,
                backgroundColor: AppColors.ofwhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "Login With Google",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        //  SizedBox(
         //   height: 50,
         // ),
          Center(
            child: Container(child: Image.asset('assets/images/Language Switch.png')),
          ),
        ],
      ),
    );
  }
}

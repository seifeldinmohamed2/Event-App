import 'package:evently_app/theme_of_app/app_colors.dart';
import 'package:flutter/material.dart';

import 'google_login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ofwhite,
      appBar: AppBar(
        title: Center(child: Text('Register')),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Container(child: Image.asset('assets/images/Logo.png')),
          ),
          SizedBox(height: 10),
          Container(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Name",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/person.png',
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
          SizedBox(height: 10),
          Container(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Re Password",
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
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 50,

            child: FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GoogleLogin()),
                );              },
              style: FilledButton.styleFrom(
                foregroundColor: AppColors.ofwhite,
                backgroundColor: AppColors.periwinkle,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "Create Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Have Account ? ",
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleLogin()),
                  );
                },
                child: Text(
                  " Login",
                  style: TextStyle(
                    color: AppColors.periwinkle,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(child: Image.asset('assets/images/Language Switch.png')),
          ),
        ],
      ),
    );
  }
}

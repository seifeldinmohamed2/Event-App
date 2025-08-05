import 'package:evently_app/home_screens/home_screen.dart';
import 'package:evently_app/theme_of_app/app_colors.dart';
import 'package:flutter/material.dart';

import 'love_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ofwhite,
      appBar: AppBar(
        backgroundColor: AppColors.periwinkle,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Seif Eldin",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "seifeldin.route@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox( height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Language",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color:AppColors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.arrow_drop_down),
                hintText: "Arabic",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.periwinkle, width: 1),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Theme",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color:AppColors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.arrow_drop_down),
                hintText: "Dark",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.periwinkle, width: 1),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Add Pressed");
        },
        backgroundColor: AppColors.periwinkle,
        shape: const CircleBorder(),
        child: Icon(Icons.add, size: 40, color: AppColors.ofwhite),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: AppColors.periwinkle,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: _buildNavItem(
                  const Icon(Icons.home_filled, color: AppColors.black),
                  "Home",
                  AppColors.black,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        );                  },
                ),
              ),
              Expanded(
                child: _buildNavItem(
                  Image.asset(
                    'assets/images/Vector.png',
                    height: 24,
                    color: AppColors.ofwhite,
                  ),
                  "Map",
                  AppColors.ofwhite,
                      () {
                    //  Navigator.pushNamed(context, '/map');
                  },
                ),
              ),
              const SizedBox(width: 48),

              Expanded(
                child: _buildNavItem(
                  const Icon(Icons.favorite, color: AppColors.ofwhite),
                  "Love",
                  AppColors.ofwhite,
                      () {//LoveScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoveScreen()),
                    );
                  },
                ),
              ),
              Expanded(
                child: _buildNavItem(
                  const Icon(Icons.person, color: AppColors.ofwhite),
                  "Profile",
                  AppColors.ofwhite,
                      () {//ProfileScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildNavItem(
    Widget iconWidget,
    String label,
    Color labelColor,
    VoidCallback onTap,
    ) {
  return InkWell(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconWidget,
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: labelColor, fontSize: 12)),
      ],
    ),
  );
}
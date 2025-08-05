import 'package:evently_app/home_screens/profile_screen.dart';
import 'package:evently_app/home_screens/task_view.dart';
import 'package:evently_app/theme_of_app/app_colors.dart';
import 'package:flutter/material.dart';

import 'love_screen.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedFilter = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ofwhite,
      appBar: AppBar(
        backgroundColor: AppColors.periwinkle,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 180,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First row: name and language toggle
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Welcome text and location
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back ✨",
                          style: TextStyle(
                            color: AppColors.ofwhite,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Seif eldin",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColors.ofwhite,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 16,
                              color: AppColors.ofwhite,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Cairo , Egy",
                              style: TextStyle(color: AppColors.ofwhite),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Language buttons
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: AppColors.periwinkle,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.sunny, color: AppColors.ofwhite),
                        ),
                        SizedBox(width: 8),
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: AppColors.ofwhite,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "EN",
                            style: TextStyle(color: AppColors.periwinkle),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildFilterChip(
                        Icons.all_inclusive,
                        "All",
                        AppColors.periwinkle,
                            () {
                          setState(() {
                            selectedFilter = "All";
                          });
                          //Navigator.push(
                        // context,
                          //  MaterialPageRoute(builder: (context) =>  Post()),
                       //  );
                              },
                      ),
                      _buildFilterChip(
                        Icons.sports_soccer,
                        "Sport",
                        AppColors.periwinkle,
                            () {
                          setState(() {
                            selectedFilter = "Sport";
                          });
                          //Navigator.pushNamed(context, '/allPage');
                        },
                      ),
                      _buildFilterChip(
                        Icons.cake,
                        "Birthday",
                        AppColors.periwinkle,
                            () {
                          setState(() {
                            selectedFilter = "Birthday";
                          });
                         // Navigator.pushNamed(context, '/allPage');
                        },
                      ),
                      _buildFilterChip(
                        Icons.business,
                        "Meeting",
                        AppColors.periwinkle,
                            () {
                          setState(() {
                            selectedFilter = "Meeting";
                          });
                         // Navigator.pushNamed(context, '/allPage');
                        },
                      ),
                      _buildFilterChip(
                        Icons.mic,
                        "Exhibition",
                        AppColors.periwinkle,
                            () {
                          setState(() {
                            selectedFilter = "Exhibition";
                          });
                         // Navigator.pushNamed(context, '/allPage');
                        },
                      ),
                      _buildFilterChip(
                        Icons.business,
                        "Meeting",
                        AppColors.periwinkle,
                            () {
                          setState(() {
                            selectedFilter = "Meeting";
                          });
                        //  Navigator.pushNamed(context, '/allPage');
                        },
                      ),
                      _buildFilterChip(
                        Icons.business,
                        "Meeting",
                        AppColors.periwinkle,
                            () {
                          setState(() {
                            selectedFilter = "Meeting";
                          });
                         // Navigator.pushNamed(context, '/allPage');
                        },
                      ),
                      _buildFilterChip(
                        Icons.business,
                        "Meeting",
                        AppColors.periwinkle,
                            () {
                          setState(() {
                            selectedFilter = "Meeting";
                          });
                        //  Navigator.pushNamed(context, '/allPage');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
//Image.asset("assets/images/birthday.png"),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/birthday.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "04 \nAug",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 35,
                      color: AppColors.black.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "This is a Birthday Party",
                              style: TextStyle(
                                color: AppColors.ofwhite,
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border, color: AppColors.ofwhite),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/meeting.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "04 \nAug",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 50,
                      color: AppColors.black.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Meeting for Updating The Development\n Method",
                              style: TextStyle(
                                color: AppColors.ofwhite,
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border, color: AppColors.ofwhite),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/Exhibition.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "04 \nAug",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 35,
                      color: AppColors.black.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "This is a Exhibition",
                              style: TextStyle(
                                color: AppColors.ofwhite,
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border, color: AppColors.ofwhite),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/sport.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "04 \nAug",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 35,
                      color: AppColors.black.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "This is a Sport Gamer",
                              style: TextStyle(
                                color: AppColors.ofwhite,
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border, color: AppColors.ofwhite),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/bookclub.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "04 \nAug",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 35,
                      color: AppColors.black.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "This is a Book Club",
                              style: TextStyle(
                                color: AppColors.ofwhite,
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border, color: AppColors.ofwhite),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TaskView()),
          );
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
                    //Navigator.pushNamed(context, '/home');
                  },
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
Widget _buildFilterChip(
    IconData icon,
    String label,
    Color textColor,
    VoidCallback onTap,
    ) {
  var selectedFilter;
  bool isSelected = selectedFilter == label;

  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(20),
    child: Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.periwinkle : AppColors.ofwhite,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? AppColors.periwinkle : AppColors.periwinkle,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: AppColors.periwinkle),
          SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              color: textColor,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
  );
}

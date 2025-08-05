import 'package:evently_app/theme_of_app/app_colors.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  String selectedFilter = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ofwhite,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Event Title",
            style: TextStyle(
              color: AppColors.periwinkle,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/sport.png'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterChip(
                  icon: Icons.sports_soccer,
                  label: "Sport",
                  textColor: AppColors.periwinkle,
                  selectedFilter: selectedFilter,
                  onTap: () {
                    setState(() {
                      selectedFilter = "Sport";
                    });
                  },
                ),
                _buildFilterChip(
                  icon: Icons.cake,
                  label: "Birthday",
                  textColor: AppColors.periwinkle,
                  selectedFilter: selectedFilter,
                  onTap: () {
                    setState(() {
                      selectedFilter = "Birthday";
                    });
                  },
                ),
                _buildFilterChip(
                  icon: Icons.business,
                  label: "Meeting",
                  textColor: AppColors.periwinkle,
                  selectedFilter: selectedFilter,
                  onTap: () {
                    setState(() {
                      selectedFilter = "Meeting";
                    });
                  },
                ),
                _buildFilterChip(
                  icon: Icons.mic,
                  label: "Exhibition",
                  textColor: AppColors.periwinkle,
                  selectedFilter: selectedFilter,
                  onTap: () {
                    setState(() {
                      selectedFilter = "Exhibition";
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Title",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Event Title",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/Vector2.png',
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Description",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Event Description",
                  alignLabelWithHint: true,
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
          ),
         Row(
              children: [
                Image.asset('assets/images/Vector3.png'),
                SizedBox(width: 10,),
                Text(
                  "Event Date",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                    //  Navigator.push(
                       // context,
                       // MaterialPageRoute(builder: (context) => const ForgetPassword()),
                  //    );
                    },
                    child: Text(
                      "Choose Date",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.periwinkle,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          Row(
              children: [
                Image.asset('assets/images/Vector4.png'),
                SizedBox(width: 10,),
                Text(
                  "Event Time",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      //  Navigator.push(
                      // context,
                      // MaterialPageRoute(builder: (context) => const ForgetPassword()),
                      //    );
                    },
                    child: Text(
                      "Choose Time",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.periwinkle,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Location",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.gray, width: 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
              //  Icon(Icons.location_on, color: AppColors.gray),
                Image.asset('assets/images/location.png'),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    "Choose Event Location",
                    style: TextStyle(color: AppColors.periwinkle),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.periwinkle),
              ],
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
                "Add Event",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip({
    required IconData icon,
    required String label,
    required Color textColor,
    required String selectedFilter,
    required VoidCallback onTap,
  }) {
    final bool isSelected = selectedFilter == label;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.periwinkle : AppColors.ofwhite,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.periwinkle, width: 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 16,
              color: isSelected ? Colors.white : AppColors.periwinkle,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : textColor,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

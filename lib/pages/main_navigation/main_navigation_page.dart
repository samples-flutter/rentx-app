import 'package:flutter/material.dart';
import 'package:rentx/pages/main_navigation/profile/profile_page.dart';
import 'package:rentx/pages/main_navigation/results/results_page.dart';
import 'package:rentx/pages/main_navigation/scheduling/scheduling_page.dart';
import 'package:rentx/styles/app_colors.dart';

import 'list_car/list_car_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  List<Widget> pagesNavigation = [
    ResultsPage(),
    ListCarPage(),
    SchedulingPage(),
    ProfilePage()
  ];
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesNavigation.elementAt(indexPage),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        currentIndex: indexPage,
        onTap: stepToScreen,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "_"),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car_outlined), label: "_"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: "_"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: "_"),
        ],
      ),
    );
  }

  stepToScreen(int index) {
    setState(() {
      indexPage = index;
    });
  }
}

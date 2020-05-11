import 'package:flutter/material.dart';
import 'package:internship_hb/ordersPage.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

import 'homepage.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int pageIndex = 0; // controls the current page in bottom navigation bar
  final pages = [
    HomePage(),
    OrderPage(),
    HomePage(),
    HomePage()
  ]; // add pages here to show them in bottom navigation bar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: TitledBottomNavigationBar(
          currentIndex: pageIndex,
          activeColor: Colors.red.shade600,
          // Use this to update the Bar giving a position
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          items: [
            TitledNavigationBarItem(title: 'Home', icon: Icons.home),
            TitledNavigationBarItem(
                title: 'Orders', icon: Icons.calendar_today),
            TitledNavigationBarItem(
                title: 'Profile', icon: Icons.supervised_user_circle),
            TitledNavigationBarItem(
                title: 'Help', icon: Icons.help),
          ]),
    );
  }
}

import 'package:app_quran/account_screen.dart';
import 'package:app_quran/home_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HalamanBottom extends StatefulWidget {
  const HalamanBottom({super.key});

  @override
  State<HalamanBottom> createState() => _HalamanBottomState();
}

class _HalamanBottomState extends State<HalamanBottom> {
  final listBottom = [
    const HomeScreen(),
    const AccountScreen(),
  ];

  int currentIndex = 0;

  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: listBottom[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          maxWidth: double.infinity,
          items: [
            Icon(
              Icons.home,
              size: 35,
              color: isSelected ? Colors.white : Colors.cyan,
            ),
            Icon(
              Icons.account_circle,
              size: 35,
              color: isSelected ? Colors.white : Colors.cyan,
            ),
          ],
          index: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          backgroundColor: Colors.white,
          color: Colors.cyan,
          buttonBackgroundColor: Colors.blue,
        ),
      ),
    );
  }
}

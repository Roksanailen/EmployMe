import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:emplooo/features/profile/presentation/Profile_screen.dart';
import 'package:emplooo/features/information/presentation/information_screen.dart';
import 'package:emplooo/features/search/presentation/search_screen.dart';
import 'package:emplooo/features/cv/presentation/yourcv_screen.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List screens = [
    const Home(),
    const Search(),
    Profile(),
    const YourCv(),
    const Information()
  ];
  int _selectedIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _selectedIndex,
        height: 60.0,
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.file_present_rounded),
          Icon(Icons.info)
        ],
        color: const Color.fromARGB(255, 69, 133, 245),
        buttonBackgroundColor: const Color.fromARGB(255, 111, 169, 197),
        backgroundColor: Colors.white,
        animationCurve: Curves.easeIn,
        animationDuration: const Duration(milliseconds: 250),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

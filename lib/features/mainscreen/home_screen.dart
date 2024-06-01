import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:emplooo/features/advice/Presentation/advice.dart';
import 'package:emplooo/features/cv/presentation/authsplash.dart';
import 'package:emplooo/features/information/presentation/information_screen.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/Home.dart';
import 'package:emplooo/features/search/presentation/search_screen.dart';
import 'package:emplooo/features/maps.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';


import 'menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screens = [
    const Home(),
    const Search(),
    const YourCv(),
     Advice(),
    const Information(),
     Map(),

  ];
  int _selectedIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      menu: const Menu(),
      type: SideMenuType.shrikNRotate,
      maxMenuWidth: 300,
      key: sideMenuKey,
      radius: BorderRadius.circular(50),
      background: const Color.fromARGB(255, 232, 240, 247),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              if (sideMenuKey.currentState!.isOpened) {
                sideMenuKey.currentState!.closeSideMenu();
              } else {
                sideMenuKey.currentState!.openSideMenu();
              }
            },
          ),
        ),
        body: screens[_selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _selectedIndex,
          height: 60.0,
          items: const [
            Icon(Icons.home, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.propane_sharp),
            Icon(Icons.library_books_outlined),
            Icon(Icons.help),
            Icon(Icons.map_sharp)
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
      ),
    );
  }
}

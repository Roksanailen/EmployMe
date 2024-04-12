import 'package:emplooo/features/mainscreen/Home.dart';
import 'package:emplooo/features/profile/presentation/Profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 240, 247),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.55,
            height: MediaQuery.of(context).size.height * 0.30,
          ),
          DrawerButton(
              iconData: Icons.home,
              name: 'Home',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
          SizedBox(
            height: 40,
          ),
          DrawerButton(
              iconData: Icons.person,
              name: 'profile',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              }),
          SizedBox(
            height: 40,
          ),
          DrawerButton(
            iconData: Icons.settings,
            name: 'Settings',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

DrawerButton({
  required String name,
  required IconData iconData,
  required VoidCallback onTap,
}) {
  return InkWell(
    hoverColor: Colors.blue.shade100,
    highlightColor: Colors.blue.shade400,
    borderRadius: BorderRadius.circular(30),
    onTap: onTap,
    child: Container(
      width: double.maxFinite,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 20),
          )
        ],
      ),
    ),
  );
}

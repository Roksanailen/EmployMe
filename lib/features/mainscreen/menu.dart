import 'package:emplooo/generated/locale_keys.g.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/Home.dart';
import 'package:emplooo/features/profile/presentation/profile_screen.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 240, 247),
      body: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              height: MediaQuery.of(context).size.height * 0.20,
              child:  Column(
                children: [
                  Text(
                    LocaleKeys.menu_menu1.tr(),
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          DrawerButton(
              iconData: Icons.home,
              name: LocaleKeys.menu_menu2.tr(),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              }),
          const SizedBox(
            height: 40,
          ),
          DrawerButton(
              iconData: Icons.person,
              name: LocaleKeys.menu_menu3.tr(),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              }),
          const SizedBox(
            height: 40,
          ),
          DrawerButton(
            iconData: Icons.language,
            name: LocaleKeys.menu_menu5.tr(),
            onTap: () {
             var newLocale =context.locale.languageCode=='en'?
             const Locale('ar'):const Locale('en');
             context.setLocale(newLocale);

            },
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
            style: const TextStyle(color: Colors.black, fontSize: 20),
          )
        ],
      ),
    ),
  );
}

import 'package:emplooo/features/auth/presentation/signin.dart';
import 'package:emplooo/features/mainscreen/home_screen.dart';
import 'package:emplooo/features/profile/presentation/Profile_screen.dart';
import 'package:emplooo/features/splashscreen/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home_Screen());
  }
}

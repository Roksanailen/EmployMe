import 'dart:math';

import 'package:emplooo/features/auth/presentation/sign%20up.dart';
import 'package:emplooo/features/mainscreen/homescreen.dart';
import 'package:emplooo/features/splashscreen/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentation/signin.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    return MaterialApp(debugShowCheckedModeBanner: false, 
    
    home: Splash_Screen());
  }
}

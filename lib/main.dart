import 'dart:io';
import 'package:emplooo/Auth/presentation/signin.dart';
import 'package:emplooo/main_text_field.dart';
import 'package:emplooo/Auth/presentation/sign%20up.dart';
import 'package:flutter/material.dart';
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
    final isDesktop = MediaQuery.of(context).size.width >= 600;
    final ismobile = MediaQuery.of(context).size.width <= 600;
    MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Signin()
    );
  }
}

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
    return MaterialApp(debugShowCheckedModeBanner: false, home: Signin());
  }
}

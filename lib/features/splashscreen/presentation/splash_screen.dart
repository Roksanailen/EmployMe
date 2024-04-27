import 'dart:async';

import 'package:emplooo/features/mainscreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(const Duration(seconds: 5), () async {
      // final isAuth = await GlobalFunctions().isAuth();
      Navigator.pushReplacement(
          context,
          PageTransition(
              // child: isAuth ? HomeScreen() : const IntroScreen(),
              child: const HomeScreen(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 600)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 177, 208, 216),
      body: Center(
        child: Lottie.asset('assets/images/Animation - 2.json'),
      ),
    );
  }
}

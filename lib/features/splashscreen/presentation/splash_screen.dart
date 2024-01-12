import 'dart:async';
import 'package:emplooo/features/auth/presentation/signin.dart';
import 'package:emplooo/features/mainscreen/homescreen.dart';
import 'package:emplooo/features/splashscreen/presentation/intro.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Screen extends StatefulWidget {
  Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
              child: IntroScreen(),
              type: PageTransitionType.fade,
              duration: Duration(milliseconds: 600)));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 177, 208, 216),
      body: Center(
        child: Lottie.asset('assets/images/Animation - 2.json'),
      ),
    );
  }
}

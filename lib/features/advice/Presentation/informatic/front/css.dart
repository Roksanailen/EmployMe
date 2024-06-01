import 'package:emplooo/features/advice/Presentation/informatic/course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_animate/flutter_animate.dart';

class Css extends StatefulWidget {
  const Css({super.key});

  @override
  State<Css> createState() => _CssState();
}

class _CssState extends State<Css> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'أفضل كورسات بتوصية مطورين',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().rotate(duration: Duration(milliseconds: 600)),
              SizedBox(
                height: 20,
              ),
              Course(
                url: 'http///lkckckc',
                image: 'assets/images/flutter.jpg',
              ),
              SizedBox(
                height: 20,
              ),
              Course(
                url: 'http///lkckckc',
                image: 'assets/images/flutter.jpg',
              ),
              SizedBox(
                height: 20,
              ),
              Course(
                url: 'http///lkckckc',
                image: 'assets/images/flutter.jpg',
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

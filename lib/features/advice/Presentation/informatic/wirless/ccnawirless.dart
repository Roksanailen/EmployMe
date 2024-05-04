import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../course.dart';

class CcnaWirless extends StatelessWidget {
  const CcnaWirless({super.key});

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
              )
                  .animate(
                      onPlay: (controller) => controller.repeat(
                          reverse: true, period: Duration(seconds: 2)))
                  .scaleX(),
              SizedBox(
                height: 20,
              ),
              Course(
                url: 'http///lkckckc',
                image: 'assets/images/flutter.jpg',
              ),
              SizedBox(height: 20,),
              Course(
                url: 'http///lkckckc',
                image: 'assets/images/flutter.jpg',
              ),
               SizedBox(height: 20,),
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
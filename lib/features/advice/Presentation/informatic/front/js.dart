import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../course.dart';

class Js extends StatefulWidget {
  const Js({super.key});

  @override
  State<Js> createState() => _JsState();
}

class _JsState extends State<Js> {
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
                .animate().rotate(duration: Duration(milliseconds: 800)),
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
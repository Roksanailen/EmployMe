import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

import '../informatic/course.dart';

class Bazar extends StatelessWidget {
  const Bazar({super.key});

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
              ).animate().scaleX(),
              SizedBox(
                height: 50,
              ),
              Course(
                image: 'assets/images/bazar.jpg',
                uri:
                    "https://www.youtube.com/watch?v=-08NAYwHJQU&list=PLp-_ejiuz7Q27xPyCjUEeaKw2ZIb8HorC",
                text: 'Watch this course to develop yourself',
              ),
              SizedBox(
                height: 20,
              ),
              Course(
                uri:
                    "https://www.scribd.com/document/382904497/Bazar-economy-Geertz-pdf",
                image: 'assets/images/book.jpg',
                text: '"Read this book to develop yourself"',
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

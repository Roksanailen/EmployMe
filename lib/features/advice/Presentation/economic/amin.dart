import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../informatic/course.dart';

class Amin extends StatelessWidget {
  const Amin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'أفضل كورسات بتوصية مطورين',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().scaleX(),
              const SizedBox(
                height: 50,
              ),
              const Course(
                image: 'assets/images/amin1.jpg',
                uri: "https://www.youtube.com/watch?v=OZBGcAaRZGI",
                text: 'Watch this course to develop yourself',
              ),
              const SizedBox(
                height: 20,
              ),
              const Course(
                uri:
                    "https://www.noor-book.com/en/tag/%D8%AA%D8%B9%D9%84%D9%85-%D8%B9%D9%84%D9%85-%D8%A7%D9%84%D8%A7%D9%82%D8%AA%D8%B5%D8%A7%D8%AF",
                image: 'assets/images/book.jpg',
                text: '"Read this book to develop yourself"',
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

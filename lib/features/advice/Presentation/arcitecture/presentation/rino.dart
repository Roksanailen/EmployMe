import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../informatic/course.dart';

class Rino extends StatelessWidget {
  const Rino({super.key});

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
                image: 'assets/images/rino.jpg',
                uri:
                    "https://www.youtube.com/watch?v=4Tk904u9xqM&list=PL5oANHTyXIzZqVHn4pANSpqaraXNQT5PI",
                text: 'Watch this course to develop yourself',
              ),
              const SizedBox(
                height: 20,
              ),
              const Course(
                uri:
                    "https://www.architectlibrary.com/2020/10/rhino-arabic-course.html",
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

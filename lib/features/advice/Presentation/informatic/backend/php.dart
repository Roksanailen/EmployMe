import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../course.dart';

class Php extends StatelessWidget {
  const Php({super.key});

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
                  image: 'assets/images/php.jpg',
                  uri:
                      "https://www.youtube.com/watch?v=sVbEyFZKgqk&list=PLr3d3QYzkw2xabQRUpcZ_IBk9W50M9pe-",
                  text: 'Watch this book to develop yourself',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Course(
                  uri:
                      "https://www.alarabimag.com/books/25-%D8%AA%D8%B9%D9%84%D9%85-%D8%A7%D9%84%D9%80PHP-%D8%A8%D8%B3%D9%87%D9%88%D9%84%D9%87.html#:~:text=%D8%AA%D8%AD%D9%85%D9%8A%D9%84%20%D9%88%D9%82%D8%B1%D8%A7%D8%A1%D8%A9%20%D9%83%D8%AA%D8%A7%D8%A8%20%D8%AA%D8%B9%D9%84%D9%85%20%D8%A7%D9%84PHP%20%D8%A8%D8%B3%D9%87%D9%88%D9%84%D9%87%20%D9%84%D9%84%D9%83%D8%A7%D8%AA%D8%A8%20%D8%AA%D9%87%D8%A7%D9%86%D9%8A,%D8%A8%D9%84%D8%BA%D8%A9%20%D8%A7%D9%84%20HTML%20%D9%88%D8%A7%D9%84%D9%82%D9%84%D9%8A%D9%84%20%D9%85%D9%86%20%D9%84%D8%BA%D8%A9%20%D8%A7%D9%84%20Java",
                  image: 'assets/images/book.jpg',
                  text: '"Read this book to develop yourself"',
                ),
                const SizedBox(
                  height: 20,
                )
              ]),
        ),
      ),
    );
  }
}

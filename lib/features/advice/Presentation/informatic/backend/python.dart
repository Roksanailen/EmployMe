import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../course.dart';

class Python extends StatelessWidget {
  const Python({super.key});

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
                image: 'assets/images/python2.jpg',
                uri:
                    "https://www.youtube.com/watch?v=h3VCQjyaLws&list=PLuXY3ddo_8nzrO74UeZQVZOb5-wIS6krJ",
                text: 'Watch this course to develop yourself',
              ),
              const SizedBox(
                height: 20,
              ),
              const Course(
                uri:
                    "https://www.bing.com/ck/a?!&&p=a73e4688ca8a444cJmltdHM9MTcxOTUzMjgwMCZpZ3VpZD0wMTBlMGRlZi1kYTZiLTYyOTUtMjMyNS0xZDBhZGI3NTYzM2MmaW5zaWQ9NTUxNw&ptn=3&ver=2&hsh=3&fclid=010e0def-da6b-6295-2325-1d0adb75633c&psq=%d9%83%d8%aa%d8%a7%d8%a8+%d9%84%d8%aa%d8%b9%d9%84%d9%85+%d9%84%d8%ba%d8%a9+python&u=a1aHR0cHM6Ly9mb3VsYWJvb2suY29tL2FyL2Jvb2svJUQ4JUFBJUQ4JUI5JUQ5JTg0JUQ5JTg1LSVEOCVBNyVEOSU4NCVEOCVBOCVEOCVBNyVEOSU4QSVEOCVBQiVEOSU4OCVEOSU4Ni0lRDklODQlRDklODQlRDklODUlRDglQTglRDglQUElRDglQUYlRDglQTYlRDklOEElRDklODYtJUQ4JUE4JUQ4JUE3JUQ5JTg0JUQ4JUI5JUQ4JUIxJUQ4JUE4JUQ5JThBLXBkZiM6fjp0ZXh0PSVEOCVBQSVEOCVBRCVEOSU4NSVEOSU4QSVEOSU4NCUyMCVEOSU4MyVEOCVBQSVEOCVBNyVEOCVBOCUyMCVEOCVBQSVEOCVCOSVEOSU4NCVEOSU4NSUyMCVEOCVBNyVEOSU4NCVEOCVBOCVEOCVBNyVEOSU4QSVEOCVBQiVEOSU4OCVEOSU4NiUyMCVEOSU4NCVEOSU4NCVEOSU4NSVEOCVBOCVEOCVBQSVEOCVBRiVEOCVBNiVEOSU4QSVEOSU4NiUyMC0lMjAlRDglQTglRDglQTclRDklODQlRDglQjklRDglQjElRDglQTglRDklOEElMjBwZGYsJUQ4JUIzJUQ5JTg0JUQ4JUIzJUQ4JUE5JTIwJUQ5JTg4JUQ4JUE4JUQ4JUIzJUQ5JThBJUQ4JUI3JUQ4JUE5JTIwJUQ5JTgxJUQ4JUI2JUQ5JTg0JUQ4JUE3JTIwJUQ4JUI5JUQ5JTg2JTIwJUQ5JTgxJUQ5JTg3JUQ5JTg1JTIwJUQ4JUE3JUQ5JTg0JUQ4JUE4JUQ4JUE3JUQ5JThBJUQ4JUFCJUQ5JTg4JUQ5JTg2JTIwJUQ4JUE4JUQ4JUI3JUQ4JUIxJUQ5JThBJUQ5JTgyJUQ4JUE5JTIwJUQ5JTg1JUQ4JUFFJUQ4JUFBJUQ5JTg0JUQ5JTgxJUQ4JUE5Lg&ntb=1",
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

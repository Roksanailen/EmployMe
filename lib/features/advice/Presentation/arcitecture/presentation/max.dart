import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../informatic/course.dart';

class Max extends StatelessWidget {
  const Max({super.key});

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
                image: 'assets/images/max1.jpg',
                uri:
                    "https://youtu.be/m7DiMIpedRw?list=PLElQRioaFMAt070vQWqFagA37uED6PGA9",
                text: 'Watch this course to develop yourself',
              ),
              SizedBox(
                height: 20,
              ),
              Course(
                uri:
                    "https://www.bing.com/ck/a?!&&p=72dc2ff54c34645eJmltdHM9MTcxOTQ0NjQwMCZpZ3VpZD0wMTBlMGRlZi1kYTZiLTYyOTUtMjMyNS0xZDBhZGI3NTYzM2MmaW5zaWQ9NTQ5OA&ptn=3&ver=2&hsh=3&fclid=010e0def-da6b-6295-2325-1d0adb75633c&psq=%d9%83%d8%aa%d8%a7%d8%a8+%d9%84%d8%aa%d8%b9%d9%84%d9%85+%d8%a7%d9%843d+max&u=a1aHR0cHM6Ly93d3cucmVzLTNkLmNvbS95b3VyLWd1aWRlLXRvLWxlYXJuaW5nLWFuZC13b3JraW5nLTNkcy1tYXgvIzp-OnRleHQ9JUQ4JUI3JUQ4JUIxJUQ5JThBJUQ5JTgyJUQ5JTgzJTIwJUQ5JTg0JUQ5JTg0JUQ4JUFBJUQ4JUI5JUQ5JTg0JUQ5JTg1JTIwJUQ5JTg4JUQ4JUE3JUQ5JTg0JUQ4JUI5JUQ5JTg1JUQ5JTg0JTIwJUQ4JUE4JUQ4JUE4JUQ4JUIxJUQ5JTg2JUQ4JUE3JUQ5JTg1JUQ4JUFDJTIwM2RzJTIwTWF4JTIwJUQ5JThBJUQ4JUI5JUQ4JUFGJTIwJUQ5JTg3JUQ4JUIwJUQ4JUE3LCVEOCVCOSVEOCVCMSVEOCVBOCVEOSU4OSUyMCVEOSU4QSVEOSU4NiVEOCVBNyVEOSU4MiVEOCVCNCUyMCVEOSU4MyVEOSU4QSVEOSU4MSVEOSU4QSVEOCVBOSUyMCVEOCVBNyVEOSU4NCVEOCVBQSVEOCVCOSVEOSU4NCVEOSU4NSUyMCVEOSU4OCVEOCVBNyVEOSU4NCVEOCVCOSVEOSU4NSVEOSU4NCUyMCVEOCVBOCVEOCVBOCVEOCVCMSVEOSU4NiVEOCVBNyVEOSU4NSVEOCVBQyUyMDNkcyUyME1heC4&ntb=1",
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

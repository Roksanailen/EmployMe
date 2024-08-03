import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../course.dart';

class Flutter extends StatelessWidget {
  const Flutter({super.key});

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
                image: 'assets/images/flutter2.jpg',
                uri:
                    "https://www.youtube.com/watch?v=6bSP4vazmyw&list=PL93xoMrxRJIvtIXjAiX15wcyNv-LOWZa9",
                text: 'Watch this course to develop yourself',
              ),
              const SizedBox(
                height: 20,
              ),
              const Course(
                uri:
                    "https://www.bing.com/ck/a?!&&p=49bed7361da08731JmltdHM9MTcxOTUzMjgwMCZpZ3VpZD0wMTBlMGRlZi1kYTZiLTYyOTUtMjMyNS0xZDBhZGI3NTYzM2MmaW5zaWQ9NTUyNQ&ptn=3&ver=2&hsh=3&fclid=010e0def-da6b-6295-2325-1d0adb75633c&psq=%d9%83%d8%aa%d8%a7%d8%a8+%d9%84%d8%aa%d8%b9%d9%84%d9%85+%d9%84%d8%ba%d8%a9+flutter&u=a1aHR0cHM6Ly9jb25uZWN0NHRlY2hzLmNvbS8lRDklODMlRDglQUElRDglQTclRDglQTgtJUQ4JUFBJUQ4JUI5JUQ5JTg0JUQ5JTg1LSVEOSU4MSVEOSU4NCVEOCVBNyVEOCVBQSVEOCVCMWZsdXR0ZXItJUQ5JTg1JUQ5JTg2LSVEOCVBNyVEOSU4NCVEOCVCNSVEOSU4MSVEOCVCMS0lRDklODQlRDklODQlRDglQTUlRDglQUQlRDglQUElRDglQjElRDglQTclRDklODEtcGRmLSVEOCVBOCVEOCVBNy8jOn46dGV4dD0lRDklODUlRDglQUQlRDglQUElRDklODglRDklOEElRDglQTclRDglQUElMjAlRDglQTclRDklODQlRDklODMlRDglQUElRDglQTclRDglQTglMjAlM0EtJTIwMSUyMCVEOCVBNyVEOSU4NCVEOSU4OCVEOCVBRCVEOCVBRiVEOCVBOSUyMCVEOCVBNyVEOSU4NCVEOCVBNyVEOSU4OCVEOSU4NCVEOSU4OSUyMCUzQSUyMCVEOCVBNyVEOSU4NCVEOSU4NSVEOCVBRiVEOCVBRSVEOSU4NCwlRDglQTUlRDglQjYlRDglQTclRDklODElRDglQTklMjAlRDglQTUlRDglQjklRDklODQlRDglQTclRDklODYlRDglQTclRDglQUElMjBBZG1vYiUyMCVEOSU4NiVEOCVCNCVEOCVCMSUyMCVEOCVBQSVEOCVCNyVEOCVBOCVEOSU4QSVEOSU4MiVEOCVBNyVEOCVBQSUyMCVEOCVBNyVEOSU4NiVEOCVBRiVEOCVCMSVEOSU4OCVEQiU4QyVEOCVBRiUyMDYlMjAlRDglQTclRDklODQlRDklODUlRDglQjElRDglQTclRDglQUMlRDglQjk&ntb=1",
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

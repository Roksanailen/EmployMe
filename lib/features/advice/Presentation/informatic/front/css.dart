import 'package:emplooo/features/advice/Presentation/informatic/course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

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
              ).animate().scaleX(),
              SizedBox(
                height: 50,
              ),
              Course(
                image: 'assets/images/css1.jpg',
                uri:
                    "https://www.youtube.com/watch?v=_QO55W7KPmI&list=PLknwEmKsW8Os7rKViMCL8x6irVJT7McSS",
                text: 'Watch this course to develop yourself',
              ),
              SizedBox(
                height: 20,
              ),
              Course(
                uri:
                    "https://www.bing.com/ck/a?!&&p=584c4c95c0642b0bJmltdHM9MTcxOTUzMjgwMCZpZ3VpZD0wMTBlMGRlZi1kYTZiLTYyOTUtMjMyNS0xZDBhZGI3NTYzM2MmaW5zaWQ9NTIxNg&ptn=3&ver=2&hsh=3&fclid=010e0def-da6b-6295-2325-1d0adb75633c&psq=%d9%83%d8%aa%d8%a7%d8%a8+%d9%84%d8%aa%d8%b9%d9%84%d9%85+%d9%84%d8%ba%d8%a9+css&u=a1aHR0cHM6Ly9jb25uZWN0NHRlY2hzLmNvbS8lRDklODMlRDglQUElRDglQTclRDglQTgtJUQ4JUFBJUQ4JUI5JUQ5JTg0JUQ5JTg1LSVEOSU4NCVEOCVCQSVEOCVBOS1jc3MtJUQ5JTg1JUQ5JTg2LSVEOCVBNyVEOSU4NCVEOCVCNSVEOSU4MSVEOCVCMS0lRDklODQlRDklODQlRDglQTUlRDglQUQlRDglQUElRDglQjElRDglQTclRDklODEtJUQ4JUE4JUQ4JUE3JUQ5JTg0JUQ5JTg0JUQ4JUJBLw&ntb=1",
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

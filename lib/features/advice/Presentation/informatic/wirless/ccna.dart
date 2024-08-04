import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../course.dart';

class Ccna extends StatelessWidget {
  const Ccna({super.key});

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
               Text(LocaleKeys.ccna_ccna.tr(),
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().scaleX(),
              const SizedBox(
                height: 50,
              ),
               Course(
                image: 'assets/images/ccna1.jpg',
                uri:
                    "https://www.youtube.com/watch?v=4u3LVXDOkyw&list=PLpwHU9rNXAVurp2h2Jh-cd4-8XjkT5osu",
                text: LocaleKeys.ccna_cnna1.tr(),
              ),
              const SizedBox(
                height: 20,
              ),
               Course(
                uri:
                    "https://www.bing.com/ck/a?!&&p=48f902c5bec6224bJmltdHM9MTcxOTUzMjgwMCZpZ3VpZD0wMTBlMGRlZi1kYTZiLTYyOTUtMjMyNS0xZDBhZGI3NTYzM2MmaW5zaWQ9NTIwMw&ptn=3&ver=2&hsh=3&fclid=010e0def-da6b-6295-2325-1d0adb75633c&psq=%d9%83%d8%aa%d8%a7%d8%a8+%d9%84%d8%aa%d8%b9%d9%84%d9%85+%d9%84%d8%ba%d8%a9+ccna&u=a1aHR0cHM6Ly93d3cuZGV2enYuY29tL2FyL3RoZS01LWJlc3QtY2NuYS1jZXJ0aWZpY2F0aW9uLWJvb2tzLmh0bWw&ntb=1",
                image: 'assets/images/book.jpg',
                text: LocaleKeys.ccna_ccna2.tr(),
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

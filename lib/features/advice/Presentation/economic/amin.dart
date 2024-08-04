import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
           Text(
                LocaleKeys.amin_amin.tr(),
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().scaleX(),
              const SizedBox(
                height: 50,
              ),
               Course(
                image: 'assets/images/amin1.jpg',
                uri: "https://www.youtube.com/watch?v=OZBGcAaRZGI",
                text: LocaleKeys.amin_amin1.tr(),
              ),
              const SizedBox(
                height: 20,
              ),
              Course(
                uri:
                    "https://www.noor-book.com/en/tag/%D8%AA%D8%B9%D9%84%D9%85-%D8%B9%D9%84%D9%85-%D8%A7%D9%84%D8%A7%D9%82%D8%AA%D8%B5%D8%A7%D8%AF",
                image: 'assets/images/book.jpg',
                text: LocaleKeys.amin_amin2.tr(),
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

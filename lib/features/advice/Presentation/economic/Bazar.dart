import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
              const SizedBox(
                height: 20,
              ),
               Text(
                LocaleKeys.Bazar_bazar.tr(),
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().scaleX(),
              const SizedBox(
                height: 50,
              ),
               Course(
                image: 'assets/images/bazar.jpg',
                uri:
                    "https://www.youtube.com/watch?v=-08NAYwHJQU&list=PLp-_ejiuz7Q27xPyCjUEeaKw2ZIb8HorC",
                text: LocaleKeys.Bazar_bazar1.tr(),
              ),
              const SizedBox(
                height: 20,
              ),
              Course(
                uri:
                    "https://www.scribd.com/document/382904497/Bazar-economy-Geertz-pdf",
                image: 'assets/images/book.jpg',
                text: LocaleKeys.Bazar_bazar2.tr(),
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

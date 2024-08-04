import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../course.dart';

class Nlp extends StatelessWidget {
  const Nlp({super.key});

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
               Text(LocaleKeys.nlp_nlp.tr(),
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().scaleX(),
              const SizedBox(
                height: 50,
              ),
               Course(
                image: 'assets/images/machine1.jpg',
                uri:
                    "https://www.youtube.com/watch?v=fNxaJsNG3-s&list=PLQY2H8rRoyvzDbLUZkbudP-MFQZwNmU4S",
                text: LocaleKeys.nlp_nlp1.tr(),
              ),
              const SizedBox(
                height: 20,
              ),
               Course(
                uri:
                    "https://www.london.ac.uk/sites/default/files/study-guides/introduction-to-natural-language-processing.pdf",
                image: 'assets/images/book.jpg',
                text: LocaleKeys.nlp_nlp2.tr(),
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

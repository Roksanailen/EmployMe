import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../course.dart';

class Machine extends StatelessWidget {
  const Machine({super.key});

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
              LocaleKeys.machine_econo.tr(),
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().scaleX(),
              const SizedBox(
                height: 50,
              ),
               Course(
                image: 'assets/images/machine1.jpg',
                uri: "https://www.youtube.com/watch?v=ukzFI9rgwfU",
                text: LocaleKeys.machine_econo1.tr(),
              ),
              const SizedBox(
                height: 20,
              ),
              Course(
                uri: "https://ai.stanford.edu/~nilsson/MLBOOK.pdf",
                image: 'assets/images/book.jpg',
                text: LocaleKeys.machine_econo2.tr(),
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

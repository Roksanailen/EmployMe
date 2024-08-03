import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../informatic/course.dart';

class Revit extends StatelessWidget {
  const Revit({super.key});

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
                image: 'assets/images/revit2.jpg',
                uri:
                    "https://www.youtube.com/watch?v=QBsJrrEKoCc&list=PLElQRioaFMAvnapERT_1ngpVAAeEaeXZg",
                text: 'Watch this course to develop yourself',
              ),
              const SizedBox(
                height: 20,
              ),
              const Course(
                uri:
                    "https://www.cadcollege.nl/boeken/boek_revit.htm?msclkid=b88c6dd6718114dc07080bab81c256d8",
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

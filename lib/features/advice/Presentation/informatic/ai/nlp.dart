import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

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
                image: 'assets/images/machine1.jpg',
                uri:
                    "https://www.youtube.com/watch?v=fNxaJsNG3-s&list=PLQY2H8rRoyvzDbLUZkbudP-MFQZwNmU4S",
                text: 'Watch this course to develop yourself',
              ),
              SizedBox(
                height: 20,
              ),
              Course(
                uri:
                    "https://www.london.ac.uk/sites/default/files/study-guides/introduction-to-natural-language-processing.pdf",
                image: 'assets/images/book.jpg',
                text: "Read this book to develop yourself",
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

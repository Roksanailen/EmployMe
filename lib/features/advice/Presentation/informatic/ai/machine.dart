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
              const Text(
                'أفضل كورسات بتوصية مطورين',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().scaleX(),
              const SizedBox(
                height: 50,
              ),
              const Course(
                image: 'assets/images/machine1.jpg',
                uri: "https://www.youtube.com/watch?v=ukzFI9rgwfU",
                text: 'Watch this course to develop yourself',
              ),
              const SizedBox(
                height: 20,
              ),
              const Course(
                uri: "https://ai.stanford.edu/~nilsson/MLBOOK.pdf",
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

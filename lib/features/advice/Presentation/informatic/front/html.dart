import 'package:emplooo/features/advice/Presentation/informatic/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Html extends StatelessWidget {
  const Html({super.key});

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
                image: 'assets/images/html2.jpg',
                uri:
                    "https://www.youtube.com/watch?v=Dv39fDYei9A&list=PLknwEmKsW8OtLRQPTLms79499meY2D6ij",
                text: 'Watch this course to develop yourself',
              ),
              const SizedBox(
                height: 20,
              ),
              const Course(
                uri:
                    "https://www.bing.com/ck/a?!&&p=b18a7fff9bc94ef9JmltdHM9MTcxOTUzMjgwMCZpZ3VpZD0wMTBlMGRlZi1kYTZiLTYyOTUtMjMyNS0xZDBhZGI3NTYzM2MmaW5zaWQ9NTIwNw&ptn=3&ver=2&hsh=3&fclid=010e0def-da6b-6295-2325-1d0adb75633c&psq=%d9%83%d8%aa%d8%a7%d8%a8+%d9%84%d8%aa%d8%b9%d9%84%d9%85+%d9%84%d8%ba%d8%a9+html&u=a1aHR0cHM6Ly9tb3R3ci5jb20vZG93bmxvYWRzLyVkOCVhYSVkOCViOSVkOSU4NCVkOSU4NS1odG1sLw&ntb=1",
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

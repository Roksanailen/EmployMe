import 'package:emplooo/features/advice/Presentation/informatic/course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

class NodeJs extends StatelessWidget {
  const NodeJs({super.key});

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
                image: 'assets/images/nodejs1.jpg',
                uri:
                    "https://www.youtube.com/watch?v=zb3Qk8SG5Ms&list=PL4cUxeGkcC9jsz4LDYc6kv3ymONOKxwBU",
                text: 'Watch this course to develop yourself',
              ),
              SizedBox(
                height: 20,
              ),
              Course(
                uri:
                    "https://academy.hsoub.com/files/32-%d8%a7%d9%84%d8%a8%d8%b1%d9%85%d8%ac%d8%a9-%d8%a8%d8%a7%d8%b3%d8%aa%d8%ae%d8%af%d8%a7%d9%85-nodejs/",
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

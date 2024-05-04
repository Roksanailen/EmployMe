import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Course extends StatelessWidget {
  const Course({super.key, required this.image, required this.url});

  @override
  final String image;
  final String url;
  Widget build(BuildContext context) {
    return Container(
        width: 480,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(url,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                )),
            Container(
              width: 100,
              height: 500,
              child: Image.asset(image,
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1),
            )
                .animate(
                    onPlay: (controller) => controller.repeat(
                        reverse: true, period: Duration(seconds: 2)))
                .shakeY(),
          ],
        ));
  }
}

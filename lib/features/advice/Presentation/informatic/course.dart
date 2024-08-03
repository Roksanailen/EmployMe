import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

class Course extends StatelessWidget {
  const Course(
      {super.key, required this.image, required this.uri, required this.text});

  @override
  final String image;
  final String uri;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: InkWell(
                onTap: () {
                  launchUrl(Uri.parse(uri), mode: LaunchMode.inAppWebView);
                },
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.blue, fontSize: 14),
                )),
          ),
          SizedBox(
            width: 100,
            height: 500,
            child: Image.asset(image,
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1),
          ).animate().fadeIn(duration: const Duration(seconds: 2)),
        ],
      ),
    );
  }
}

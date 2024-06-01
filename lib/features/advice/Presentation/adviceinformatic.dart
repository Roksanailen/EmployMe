import 'package:emplooo/core/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AdviceType2 extends StatelessWidget {
  AdviceType2(
      {super.key, required this.type, required this.image, required this.Page});
  final String type;
  final String image;
  final Widget Page;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Page));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width * 0.40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 232, 240, 247),
            border: Border.all(color: Colors.blue, width: 3),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image,
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width * 0.60),
            SizedBox(
              height: 10,
            ),
            Text(
              type,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            ).animate().shake(duration: 200 .milliseconds),
          ],
        ),
      ),
    );
  }
}

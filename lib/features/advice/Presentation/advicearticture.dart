import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AdviceArt extends StatelessWidget {
  const AdviceArt(
      {super.key, required this.type, required this.image, required this.Page});

  @override
  final String type;
  final String image;
  final Widget Page;
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Page));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 232, 240, 247),
            border: Border.all(color: Colors.blue, width: 3),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image,
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.70)
                .animate(
                    onPlay: (controller) => controller.repeat(
                        reverse: true, period: Duration(seconds: 2)))
                .shake(),
            SizedBox(
              height: 10,
            ),
            Text(
              type,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            )
                .animate(
                    onPlay: (controller) => controller.repeat(
                        reverse: true, period: Duration(seconds: 2)))
                .shake(),
          ],
        ),
      ),
    );
  }
}

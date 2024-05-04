import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AdviceType extends StatelessWidget {
  AdviceType({super.key, required this.type, required this.image});
  final String type;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.70,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 240, 247),
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image,
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55)
              .animate(
                  onPlay: (controller) => controller.repeat(
                      reverse: true, period: Duration(seconds: 2)))
              .shakeY(duration: 200.ms),
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
        ],
      ),
    );
  }
}

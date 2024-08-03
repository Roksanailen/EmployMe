import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AdviceType extends StatelessWidget {
  const AdviceType({super.key, required this.type, required this.image});
  final String type;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.70,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 197, 229, 255),
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image,
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.55)
              .animate()
              .scale(duration: const Duration(milliseconds: 900)),
          const SizedBox(
            height: 10,
          ),
          Text(
            type,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}

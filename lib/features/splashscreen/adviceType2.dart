import 'package:flutter/material.dart';

class AdviceType2 extends StatelessWidget {
  AdviceType2({super.key, required this.type, required this.image});
  final String type;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.60,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 240, 247),
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image,
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.50),
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

import 'package:emplooo/features/cv/presentation/cvscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CvScreen1 extends StatefulWidget {
  const CvScreen1({super.key});

  @override
  State<CvScreen1> createState() => _CvScreen1State();
}

class _CvScreen1State extends State<CvScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: Stack(
        children: [
          // Lottie.asset('assets/images/Animation - 1705013705322.json',
          //     width: double.infinity,
          //     height: double.infinity,
          //     fit: BoxFit.cover),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Cv_Screen(),
                    ));
              },
              child: const Text('Check Jobs Recommendation With Ai'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutMaps extends StatelessWidget {
  const AboutMaps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Lottie.asset('assets/images/Animation - 1705013705322.json',
          width: double.infinity, height: double.infinity, fit: BoxFit.cover),
      SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(
              width: 200,
              height: 200,
              child: LottieBuilder.asset(
                'assets/images/question.json',
                height: MediaQuery.of(context).size.height * 0.60,
                width: MediaQuery.of(context).size.width * 0.50,
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 240, 247),
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(160),
                    topLeft: Radius.elliptical(50, 50),
                    bottomLeft: Radius.elliptical(50, 50),
                    bottomRight: Radius.circular(160),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(""" _ To find out the company's location via a link to
                         the map.
""",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        )),
                  ],
                )),
            const SizedBox(
              height: 20,
            )
          ]),
        ),
      ),
    ]));
  }
}

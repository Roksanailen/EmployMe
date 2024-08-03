import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home_Information extends StatelessWidget {
  const Home_Information({super.key});

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
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width * 0.85,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Padding(padding: EdgeInsets.all(25)),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Text(
                            "_ This interface is for browsing job opportunities  ",
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Text("available in our application. ",
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Text(
                            "_ You can browse as a guest without creating an account. ",
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Text("_You can browse remote job opportunities ",
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Text(
                            "_learn about companies participating in our application.",
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
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

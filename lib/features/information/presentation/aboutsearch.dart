import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Search_Information extends StatefulWidget {
  const Search_Information({super.key});

  @override
  State<Search_Information> createState() => _Search_InformationState();
}

class _Search_InformationState extends State<Search_Information> {
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
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 240, 247),
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.elliptical(50, 50),
                    topLeft: Radius.circular(160),
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
                            "_show you suitable job opportunities based on your CV ",
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
                        Text("_And to view the details of this opportunity ",
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

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutCourses extends StatelessWidget {
  const AboutCourses({super.key});

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
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 240, 247),
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(190),
                    topLeft: Radius.elliptical(50, 50),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.elliptical(50, 50),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Padding(padding: EdgeInsets.all(25)),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Text(
                            "_Through this interface you can develop your self",
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
                        Text("_ you must choose your specialty  ",
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
                        Text("_so we can provide you with useful courses ",
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
                        Text("_We provide you with abook and a youtube course",
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
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 240, 247),
                border: Border.all(color: Colors.blue, width: 3),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(190),
                  topLeft: Radius.elliptical(50, 50),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.elliptical(50, 50),
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {
                            launchUrl(
                                Uri.parse(
                                    'https://www.facebook.com/roroksan?mibextid=ZbWKwL'),
                                mode: LaunchMode.inAppWebView);
                          },
                          child: const Text(
                            "if you have a suggestion about a better book or cours, please contact with us by this url",
                            style: TextStyle(color: Colors.blue, fontSize: 14),
                          )),
                    ),
                  ]),
            )
          ]),
        ),
      ),
    ]));
  }
}

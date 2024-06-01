import 'package:emplooo/features/advice/Presentation/informatic/Flutter/flutter.dart';
import 'package:emplooo/features/advice/Presentation/informatic/ai/machine.dart';
import 'package:emplooo/features/advice/Presentation/informatic/ai/nlp.dart';
import 'package:emplooo/features/advice/Presentation/informatic/backend/c.dart';
import 'package:emplooo/features/advice/Presentation/informatic/backend/nodejs.dart';
import 'package:emplooo/features/advice/Presentation/informatic/backend/php.dart';
import 'package:emplooo/features/advice/Presentation/informatic/backend/python.dart';
import 'package:emplooo/features/advice/Presentation/informatic/front/html.dart';
import 'package:emplooo/features/advice/Presentation/adviceinformatic.dart';
import 'package:emplooo/features/advice/Presentation/informatic/front/js.dart';
import 'package:emplooo/features/advice/Presentation/informatic/wirless/ccna.dart';
import 'package:emplooo/features/advice/Presentation/informatic/wirless/ccnawirless.dart';
import 'package:emplooo/features/advice/Presentation/informatic/wirless/cyper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'front/css.dart';

class Informatic extends StatefulWidget {
  Informatic({super.key});

  @override
  State<Informatic> createState() => _InformaticState();
}

class _InformaticState extends State<Informatic> {
  final image = [
    'assets/images/css.jpg',
    'assets/images/html.jpg',
    'assets/images/js.jpg',
  ];
  final image1 = [
    'assets/images/php.jpg',
    'assets/images/node.jpg',
    'assets/images/c#.jpg',
  ];
  final image2 = [
    'assets/images/ccna.jpg',
    'assets/images/wirless.jpg',
    'assets/images/cyper.jpg',
  ];
  final image3 = [
    'assets/images/machine.jpg',
    'assets/images/nlp.jpg',
  ];
  final image4 = [
    'assets/images/flutter.jpg',
  ];

  final type = [
    'Css',
    ' Html',
    'JavaScript',
  ];
  final type1 = ['php', ' Nodejs', 'C#', 'Python'];
  final type2 = ['Ccna Security', 'ccna wireless', 'ccna cybre ops'];
  final type3 = ['Machine Learning', 'NLP'];
  final type4 = ['flutter'];
  final Page = [Css(), Html(), Js()];
  final Page1 = [ C(),NodeJs(), Php(), Python()];
  final Page2 = [Ccna(), CcnaWirless(), Cyper()];
  final Page3 = [Machine(), Nlp()];
  final Page4 = [Flutter()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Front end',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          )
              .animate(
                  onPlay: (controller) => controller.repeat(
                      reverse: true, period: Duration(seconds: 2)))
              .fadeIn(duration: 600.ms)
              .then(delay: 200.ms)
              .slide(),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: AdviceType2(
                      image: image[index],
                      type: type[index],
                      Page: Page[index],
                    ),
                  );
                },
              ),
            ),
          ),
          Text(
            'Backend',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          )
              .animate(
                  onPlay: (controller) => controller.repeat(
                      reverse: true, period: Duration(seconds: 1)))
              .fadeIn(duration: 600.ms)
              .then(delay: 200.ms)
              .slide(),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:
                        AdviceType2(image: image1[index], type: type1[index],
                        Page: Page1[index],
                        ),
                        
                  );
                },
              ),
            ),
          ),
          Text(
            'NetWorks',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          )
              .animate(
                  onPlay: (controller) => controller.repeat(
                      reverse: true, period: Duration(seconds: 3)))
              .fadeIn(duration: 600.ms)
              .then(delay: 200.ms)
              .slide(),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: type2.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:
                        AdviceType2(image: image2[index], type: type2[index],
                        Page: Page2[index],
                        ),
                  );
                },
              ),
            ),
          ),
          Text(
            'Ai',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          )
              .animate(
                  onPlay: (controller) => controller.repeat(
                      reverse: true, period: Duration(seconds: 2)))
              .fadeIn(duration: 600.ms)
              .then(delay: 200.ms)
              .slide(),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: type3.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:
                        AdviceType2(image: image3[index], type: type3[index],
                        Page: Page3[index],
                        ),
                  );
                },
              ),
            ),
          ),
          Text(
            'Flutter',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          )
              .animate(onPlay: (controller) => controller.repeat(reverse: true))
              .fadeIn(duration: 600.ms)
              .then(delay: 200.ms)
              .slide(),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:
                        AdviceType2(image: image4[index], type: type4[index],
                        Page: Page4[index],
                        ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

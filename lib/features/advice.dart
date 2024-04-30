import 'package:emplooo/features/advice/Presentation/arcitecture.dart';
import 'package:emplooo/features/advice/Presentation/economyic.dart';
import 'package:emplooo/features/advice/Presentation/informatic.dart';
import 'package:emplooo/features/advice/Presentation/other.dart';
import 'package:emplooo/features/splashscreen/advicetype.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Advice extends StatefulWidget {
  Advice({super.key});

  @override
  State<Advice> createState() => _AdviceState();
}

class _AdviceState extends State<Advice> {
  final List<String> Pages = [
    'Informatics',
    'Economy',
    'Architecture',
    'others'
  ];

  final image = [
    'assets/images/cop.jpg',
    'assets/images/art',
    'assets/images/eco',
    'assets/images/art',
  ];

  final type = [
    'if you are informatic engineer develope your self '
        'if you are arciture engineer develope your self '
        'if you are economic develope your self '
        'if you want to work develope your self '
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 0.93,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 240, 247),
                      border: Border.all(color: Colors.blue, width: 3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(75),
                          bottomRight: Radius.circular(70),
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16))),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Informatic()));
                          },
                          child: AdviceType(
                            type:
                                ('if you are informatic engineer develope your self '),
                            image: ('assets/images/copp.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Arcitecture()));
                          },
                          child: AdviceType(
                            type:
                                ('if you are arciture engineer develope your self '),
                            image: ('assets/images/arti.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Economic()));
                          },
                          child: AdviceType(
                            type: ('if you are economic develope your self '),
                            image: ('assets/images/ec.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Others()));
                          },
                          child: AdviceType(
                            type: ('develop your self '),
                            image: ('assets/images/ec.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ]),
        ),
      ),
    );
  }
}

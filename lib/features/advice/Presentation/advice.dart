import 'package:emplooo/features/advice/Presentation/advicetype.dart';
import 'package:emplooo/features/advice/Presentation/arcitecture/presentation/arcitecture.dart';
import 'package:emplooo/features/advice/Presentation/economic/economyic.dart';
import 'package:emplooo/features/advice/Presentation/informatic/informatic.dart';
import 'package:emplooo/features/advice/Presentation/other.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Advice extends StatefulWidget {
  const Advice({super.key});

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
        body: Stack(children: [
      Lottie.asset('assets/images/Animation - 1705013705322.json',
          width: double.infinity, height: double.infinity, fit: BoxFit.cover),
      Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Informatic()));
                          },
                          child: const AdviceType(
                            type:
                                ('if you are informatic engineer develope your self '),
                            image: ('assets/images/copp.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Arcitecture()));
                          },
                          child: const AdviceType(
                            type:
                                ('if you are arciture engineer develope your self '),
                            image: ('assets/images/arti.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Economic()));
                          },
                          child: const AdviceType(
                            type: ('if you are economic develope your self '),
                            image: ('assets/images/ec.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Others()));
                          },
                          child: const AdviceType(
                            type: ('develop your self '),
                            image: ('assets/images/ec.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ]),
          ),
        ),
      )
    ]));
  }
}

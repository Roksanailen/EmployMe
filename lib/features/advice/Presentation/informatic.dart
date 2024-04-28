import 'package:emplooo/features/advice/Presentation/informatictype.dart';
import 'package:emplooo/features/mainscreen/home/presentation/typework.dart';
import 'package:emplooo/features/splashscreen/adviceType2.dart';
import 'package:emplooo/features/splashscreen/advicetype.dart';
import 'package:flutter/material.dart';

class Informatic extends StatefulWidget {
  Informatic({super.key});
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
  State<Informatic> createState() => _InformaticState();
}

class _InformaticState extends State<Informatic> {
  final image = [
    'assets/images/log6.jpg',
    'assets/images/log3.jpg',
    'assets/images/log4.jpg',
  ];

  final type = ['Css', ' Html', 'JavaScript'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 320,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: AdviceType2(image: image[index], type: type[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}

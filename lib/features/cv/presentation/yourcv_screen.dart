import 'package:flutter/material.dart';

class YourCv extends StatefulWidget {
  const YourCv({super.key});

  @override
  State<YourCv> createState() => _YourCvState();
}

class _YourCvState extends State<YourCv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 25,
            toolbarHeight: 30,
            backgroundColor: Colors.transparent,
            actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.info,
              color: Colors.black,
            ),
          ),
        ]));
  }
}

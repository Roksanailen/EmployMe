import 'package:emplooo/features/information/presentation/information_screen.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Information()));
              },
              child: Icon(
                Icons.info,
                color: Colors.black,
              ),
            ),
          ),
        ]));
  }
}

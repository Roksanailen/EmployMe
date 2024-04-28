import 'package:flutter/material.dart';

class Informatic_Type extends StatefulWidget {
  const Informatic_Type({super.key, required this.image, required this.type});
  final String image;
  final String type;
  @override
  State<Informatic_Type> createState() => _Informatic_TypeState();
}

class _Informatic_TypeState extends State<Informatic_Type> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: SizedBox(
          height: 50,
          width: 200,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 7,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

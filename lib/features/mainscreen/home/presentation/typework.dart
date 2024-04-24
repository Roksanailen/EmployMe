import 'package:emplooo/features/mainscreen/home/presentation/businessclassification.dart';
import 'package:flutter/material.dart';

class Type_Work extends StatelessWidget {
  const Type_Work({super.key, required this.image, required this.type});
  final String type;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const Business_Classification();
          }));
        },
        child: SizedBox(
          height: 250,
          width: 250,
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
                          topLeft: Radius.circular(20),
                        ),
                        child: Image.asset(
                          image,
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Madical Opportunities',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

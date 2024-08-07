import 'package:easy_localization/easy_localization.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/businessclassification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TypeWork extends StatelessWidget {
  const TypeWork(
      {super.key,
      required this.id,
      required this.image,
      required this.type,
      required this.list,
      required this.locationcompany,
      required this.name});
  final String type;
  final int id;
  final String image;
  final String list;
  final String name;
  final String locationcompany;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Business_Classification(
              type: type,
              list: list,
              locationcompany: locationcompany,
              name: name,
              sectionid: id,
            );
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
                            child: Image.network(
                              image,
                              height: 250,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ))
                        .animate()
                        .slideX(duration: const Duration(microseconds: 1000)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        type.tr(),
                        style: const TextStyle(color: Colors.black),
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

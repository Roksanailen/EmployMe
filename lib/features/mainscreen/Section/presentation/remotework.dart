
import 'package:emplooo/features/mainscreen/Section/presentation/remoteworkdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Remote_Work extends StatelessWidget {
  const Remote_Work({super.key,required this.imageremote,required this.nameremot ,required this.salaryremote,
  required this.remoteage,required this.experiencesremote,required this.phoneremote});
  final String imageremote;
  final String nameremot;
  final String salaryremote;
  final String remoteage;
  final String experiencesremote;
  final String phoneremote;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return Remote_Work_Details(imageremote: imageremote, nameremot:nameremot,salaryremote: salaryremote,
          remoteage: remoteage, experiencesremote: experiencesremote,phoneremote: phoneremote,)
              .animate()
              .flipH(delay: const Duration(milliseconds: 300))
              .fadeIn(delay: const Duration(microseconds: 200));
        }));
      },
      child: SizedBox(
        height: 250,
        width: 250,
        child: Stack(
          children: [
            Container(
              height: 230.0,
              width: 210.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Opacity(
                  opacity: 0.7,
                  child: Image.asset(imageremote,
                    fit: BoxFit.cover,
                  ).animate().scale(duration: const Duration(milliseconds: 900)),
                ),
              ),
            ),
            Positioned(
              bottom: 45,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.info_outline,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 7.0,
                        ),
                        Text(nameremot,style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money_outlined,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 7.0,
                        ),
                        Text(salaryremote,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

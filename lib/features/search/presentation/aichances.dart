import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'chancesdetails.dart';

class AiChances extends StatelessWidget {
  const AiChances({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return AiDetailes();
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
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    'assets/images/rr.png',
                    fit: BoxFit.cover,
                  ).animate().scale(duration: Duration(milliseconds: 900)),
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
                        Icon(
                          Icons.info_outline,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 9.0,
                        ),
                        Text(
                          'job name',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ).animate().scale(duration: Duration(milliseconds: 600)),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.create_new_folder_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Text(
                          'Expertise',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ).animate().scale(duration: Duration(milliseconds: 600)),
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

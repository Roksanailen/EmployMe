import 'package:emplooo/features/mainscreen/Section/presentation/remoteworkdetails.dart';
import 'package:flutter/material.dart';

class Remote_Work extends StatelessWidget {
  const Remote_Work({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return const Remote_Work_Details();
        }));
      },
      child: SizedBox(
        height: 250,
        width: 250,
        child: Stack(
          children: [
            Container(
              height: 250.0,
              width: 230.0,
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
                  child: Image.asset(
                    'assets/images/rr.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 45,
              child: Container(
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Text(
                          'Flutter developer',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
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

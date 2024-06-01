import 'package:emplooo/features/mainscreen/Section/presentation/companydetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Company extends StatelessWidget {
  const Company({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Company_Details();
          }));
        },
        child: Container(
          height: 200,
          width: 250,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 7,
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/vv.png',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )     .animate()
              .fadeIn(duration: Duration(milliseconds: 900)),
                        ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Al_Qaterji Company',
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

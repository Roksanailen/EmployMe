
import 'package:emplooo/features/mainscreen/Section/presentation/businessclassification.dart';
import 'package:flutter/material.dart';

class Type_Work extends StatelessWidget {



  Type_Work({super.key, required this.image, required this.type,required this.list,required this.locationcompany,required this.name});
  final String type ;
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
            return  Business_Classification(type: type,list: list,locationcompany: locationcompany,name: name, );
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
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(type,
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

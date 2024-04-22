import 'package:emplooo/features/mainscreen/home/presentation/businessclassification.dart';
import 'package:flutter/material.dart';

class Type_Work extends StatelessWidget {
  const Type_Work({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          return Business_Classification();
          
        }));
      },
      child:  Container(
                    height: 250,
                    width: 250,
                     child: Card(
          shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(20)
             ),
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
                      child: Image.asset('assets/images/mm.png',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      )),
                  
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                   
                    children: [
                 SizedBox(height: 30.0,),     
                 Text('Madical Opportunities',style: TextStyle(color: Colors.black),)
                       
                    ],
                  ),
                )
              ],
             ),
             ),
                  )
    );
  }
}
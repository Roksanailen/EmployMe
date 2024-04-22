import 'package:emplooo/features/mainscreen/home/presentation/remoteworkdetails.dart';
import 'package:flutter/material.dart';

class Remote_Work extends StatelessWidget {
  const Remote_Work({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
          onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          return Remote_Work_Details();
          
        }));
      },
      child: Container(
        height: 270,
        width: 250,
        child: Stack(
          children: [
           Container(
                      height: 250.0,
                     width: 230.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                        ),
                        
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          
                        ),
                        child: Opacity(
                          opacity: 0.7,
                          child: Image.asset('assets/images/rr.png',
                          fit: BoxFit.cover,
                          ),
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
                                Icon(Icons.info_outline ,color: Colors.black,),
                                SizedBox(width: 7.0,),
                                Text('Flutter developer',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10.0,),
                            Row(
                              children: [
                                Icon(Icons.create_new_folder_outlined,color: Colors.black,),
                                SizedBox(width: 7.0,),
                                Text('Expertise',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Company_Details extends StatelessWidget {
  const Company_Details({super.key});

  @override
  Widget build(BuildContext context) {
     var screenheight=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Company details'),),
        body: SingleChildScrollView(
          child: Stack(
          children: [
            Container(
              child: Image.asset('assets/images/vv.png',
              fit: BoxFit.cover,
             ).animate()
              .fadeIn(duration: Duration(milliseconds: 900)),
              height: screenheight*0.5,),
            Container(
              margin: EdgeInsets.only(top: screenheight*0.3),
              child: Material(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0)),
                child: Container(
                  padding: EdgeInsets.only(left: 30.0,top: 30.0 , bottom: 30.0),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.info_outline),
                          SizedBox(width: 10,),
                        Text('Company name',style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),),
                       
                      ],),
                      SizedBox(height: 40.0 ,),
                       Row( 
                      children: [
                        Text('Location:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 150.0,),
                        Text('Aleppo Al_Zahraa'),
                      ],
                    ),
                      SizedBox(height: 40.0 ,),
                       Row( 
                      children: [
                        Text('Type of Company:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 95.0,),
                        Text('Real Estate'),
                      ],
                    ),
                      SizedBox(height: 40.0 ,),
                       Row( 
                      children: [
                        Text('Number of jobs available:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 50.0,),
                        Text('3'),
                      ],
                    ),
                      SizedBox(height: 40.0 ,),
                       Row( 
                      children: [
                        Text('Was founded:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 120.0,),
                        Text('1999'),
                      ],
                    ),
                     SizedBox(height: 40.0 ,),
                       Row( 
                      children: [
                        Text('Phone:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 160.0,),
                        Text('2323237'),
                      ],
                    ),
                     SizedBox(height: 40.0 ,),
                       Row( 
                      children: [
                        Text('Mobile:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 160.0,),
                        Text('0935230788'),
                      ],
                    ),
                    ],
                   ),
                 ),
                  ),
                ),
              ),
            
          ],
              ),
        ),
    );
  }
}
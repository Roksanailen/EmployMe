import 'package:flutter/material.dart';

class Oppertunities_Details extends StatefulWidget {
   Oppertunities_Details({super.key, });
  
  @override
  State<Oppertunities_Details> createState() => _Oppertunities_DetailsState();
}

class _Oppertunities_DetailsState extends State<Oppertunities_Details> {
  @override
  Widget build(BuildContext context) {
     var screenheight=MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(title: Text('Oppertunities Details'),),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Image.asset('assets/images/dd.png',
              fit: BoxFit.cover,
             ),
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
                        Text('profession name',style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],),
                      SizedBox(height: 40.0 ,),
                    Row( 
                      children: [
                        Text('Age: ',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 150.0,),
                        Text('18_50'),
                      ],
                    ),
                   
                    SizedBox(height: 40.0,),
                   
                      Row(
                      
                      children: [
                        Text('Gender: ',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 125.0,),
                        Text('feminine and masculine'),
                      ],
                    ),
                      SizedBox(height: 40.0,),
                      Row(
                      
                      children: [
                        Text('Experience: ',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 105.0,),
                        Text('3 year'),
                      ],
                    ),
                    SizedBox(height: 40.0,),
                      Row(
                      
                      children: [
                      Text('Salary:',style: TextStyle(color: Colors.blue,),),
                      SizedBox(width: 135.0,),
                      Text('1200000 p.s'),
                      ],
                    ),
                    SizedBox(height: 40.0,),
                     
                      Row(
                      
                      children: [
                        Text('The required number:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 55.0,),
                        Text('2'),
                      ],
                    ),
                     SizedBox(height: 40.0,),
                    Row(
                      
                      children: [
                        Text('Connect With us:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 70.0,),
                        Text('0935230788'),
                      ],
                    ),
                       SizedBox(height: 40.0,),
                       Row(
                     
                      children: [
                        Text('company name:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 80.0,),
                        Text('Martini Hospital'),
                      ],
                    ),
                        SizedBox(height: 40.0,),
                          Row(
                     
                      children: [
                        Text('Certificates required:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 45.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.0),
                            Text('_ high school diploma'),
                            SizedBox(height: 10.0,),
                            Text('_ ICDL'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 40.0,),
                         Row(
                      children: [
                        Text('Skills required:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 75.0,),
                        Column(
                       
                          children: [
                            SizedBox(height: 10.0),
                            Text('_ high school diploma'),
                            SizedBox(height: 10.0,),
                            Text('_ ICDL'),
                          ],
                        ),
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
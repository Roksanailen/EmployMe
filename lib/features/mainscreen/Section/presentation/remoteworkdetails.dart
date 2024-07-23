import 'package:flutter/material.dart';

class Remote_Work_Details extends StatelessWidget {
  const Remote_Work_Details({super.key,required this.salaryremote,required this.experiencesremote,required this. phoneremote,
  required this.remoteage,required this.imageremote,required this.nameremot});
  final String salaryremote;
  final String experiencesremote;
  final String phoneremote;
  final String remoteage;
  final String imageremote;
  final String nameremot;
  @override
  Widget build(BuildContext context) {
    final List<String> skillsremote=['dxcvb','zrxfcgvjhbk','dzxcfvg','zrxfcgvjhbk','dzxcfvg','zrxfcgvjhbk','dzxcfvg','zrxfcgvjhbk','dzxcfvg','zrxfcgvjhbk','dzxcfvg','zrxfcgvjhbk','dzxcfvg'];
    var screenheight=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text(nameremot),),
        body: SingleChildScrollView(
          child: Stack(
          children: [
            Container(
              child: Image.asset(imageremote,
              width: double.infinity,
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
                        Text(nameremot,style: TextStyle(
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
                        Text(remoteage),
                      ],
                    ),
                    SizedBox(height: 40.0,),
                      Row(
                      
                      children: [
                        Text('Experience: ',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 105.0,),
                        Text(experiencesremote),
                      ],
                    ),
                    SizedBox(height: 40.0,),
                      Row(
                      
                      children: [
                      Text('Salary:',style: TextStyle(color: Colors.blue,),),
                      SizedBox(width: 135.0,),
                      Text(salaryremote),
                      ],
                    ),
                    SizedBox(height: 40.0,),
                    Row(
                      
                      children: [
                        Text('Connect With us:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 70.0,),
                        Text(phoneremote),
                      ],
                    ),
                
                        SizedBox(height: 40.0,),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Certificates required:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 45.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              height: 160,
                              child:
                               ListView.builder(
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index){
                                return Text(skillsremote[index]);
                               }),
                            ),
                          ],
                        ),
                      ],
                    ),
                       SizedBox(height: 40.0,),
                         Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Skills required:',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 75.0,),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              height: 160,
                              child:
                               ListView.builder(
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index){
                                return Text(skillsremote[index]);
                               }),
                            ),
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
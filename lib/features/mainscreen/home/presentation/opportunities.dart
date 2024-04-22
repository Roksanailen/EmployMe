import 'package:emplooo/features/mainscreen/home/presentation/opportunitiesdetails.dart';
import 'package:flutter/material.dart';

class Opportunities extends StatelessWidget {
  const Opportunities({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:  (){
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          return Oppertunities_Details();
          
        })
        );},
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
                    child: Image.asset('assets/images/dd.png',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    )),
                    Container(
                      height: 250,
                      
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter, colors: [Colors.black.withOpacity(0),Colors.black.withOpacity(0.8)]),
                     ),
                      child: Text('surgeon'
                      , style: TextStyle(
                        fontSize: 20,color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.home ,color: Colors.blue,),
                        SizedBox(width: 7,),
                        Text('Martini Hospital'),
                      ],
                    ),
                      Row(
                      children: [
                        Icon(Icons.price_check_sharp
                        ,color: Colors.blue,),
                        SizedBox(width: 7,),
                        Text('1000000 p.s'),
                      ],
                    )
                  ],
                ),
              )
            ],
           ),
      ),
    );
  }
}
import 'package:emplooo/features/mainscreen/home/presentation/company.dart';
import 'package:emplooo/features/mainscreen/home/presentation/remotework.dart';
import 'package:emplooo/features/mainscreen/home/presentation/typework.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: SingleChildScrollView(
         child: Container(
          margin: EdgeInsets.only(top: 40.0 ,left: 20.0 ,right:20.0 ),
          child: SingleChildScrollView(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Text("Discover", 
                style: TextStyle(
                color: Colors.black, 
                fontSize: 30.0, 
                fontWeight: FontWeight.bold
                ),),
             SizedBox(height: 10.0,),
             Text("Suitable job ",
                style: TextStyle( 
                color:Colors.black, 
                fontSize: 30.0,
                ),),
             SizedBox(height: 20.0,),
             Container(
              height: 320,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,itemBuilder: (BuildContext context, int index){
              return Type_Work();
              },),
              ),
            SizedBox(height: 20,),
            Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Opacity(
                      opacity: 0.8,
                      child: Image.asset('assets/images/work.png',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      
                      ),
                    )),
                   Positioned(
                    top:40 ,
                    left: 50,
                    child: Text('Remot Work',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (BuildContext context ,int index){
                      return Remote_Work();
                }
            ) ,
            ), SizedBox(height: 20,),
            Text('Take a look at our companies ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
              Container(
              height: 320,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,itemBuilder: (BuildContext context, int index){
              return Company();
              },),
              ),
              SizedBox(height: 30,),    
             ]
              ),
             ),),),
       );
  }
}

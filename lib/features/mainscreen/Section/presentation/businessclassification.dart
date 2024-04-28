
import 'package:emplooo/features/mainscreen/Section/presentation/opportunities.dart';
import 'package:flutter/material.dart';

class Business_Classification extends StatelessWidget {
  const Business_Classification({super.key,required this.type,required this.list,required this.name,required this.locationcompany});
  final String type; 
  final String list;
  final String name;
  final String locationcompany;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(type),),
      body: ListView.builder( itemCount: 7,itemBuilder: (BuildContext context, int index){
        return Opportunities( name: name,locationcompany: locationcompany,List: list,);      }),
    );
  }
}
import 'package:emplooo/features/mainscreen/home/presentation/opportunities.dart';
import 'package:flutter/material.dart';

class Business_Classification extends StatelessWidget {
  const Business_Classification({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Medical Opportunities '),),
      body: ListView.builder( itemCount: 7,itemBuilder: (BuildContext context, int index){
        return Opportunities();      }),
    );
  }
}
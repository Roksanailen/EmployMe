
import 'package:dartz/dartz.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/type_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/opportunitiesdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Opportunities extends StatelessWidget {
  const Opportunities({super.key,required this.name , required this.locationcompany ,required this.List,});
  final String name;
  final String List;
  final String locationcompany;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:  (){
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          return Oppertunities_Details();
          
        })
        );},
      child: BlocBuilder<TypesBloc,TypesState>(
        builder: (context, state) {
          if(state is TypesLoading){
             return const Center(
                      child: CircularProgressIndicator(),
                    );
          } else if(state is TypesSuccess){
        return Card(
          shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(20)),
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
                      child: Image.asset(List,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      )),
                     
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                         Row(
                        children: [
                          Icon(Icons.info_outline
                          ,color: Colors.blue,),
                          SizedBox(width: 7,),
                           Text(name),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.blue,),
                          SizedBox(width: 7,),
                          Text(locationcompany,),
                        ],
                      ),
                     
                    ],
                  ),
                )
              ],
             ),
          
        );}
        else return const Center(child: Text('Try Agian'),);
  }),
    );
  }
}

import 'package:emplooo/features/mainscreen/Section/presentation/bloc/type_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/opportunities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: BlocBuilder<TypesBloc,TypesState>(
        builder: (context, state) {
           if (state is TypesLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if(state is TypesSuccess){
        return ListView.builder( itemCount: state.types.length,itemBuilder: (BuildContext context, int index){
          return Opportunities( name: state.types[index].title??'null',locationcompany: state.types[index].title??'null',List: list,); }
          );
          }
          else return const Center(child: Text('Try Agian'),);
        }),
    );
  }
}
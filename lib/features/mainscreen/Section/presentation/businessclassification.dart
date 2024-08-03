import 'package:emplooo/core/unified_api/status.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/opportunities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc/sectiontype_bloc.dart';

class Business_Classification extends StatefulWidget {
  const Business_Classification(
      {super.key,
      required this.sectionid,
      required this.type,
      required this.list,
      required this.name,
      required this.locationcompany});
  final String type;
  final int sectionid;
  final String list;
  final String name;
  final String locationcompany;

  @override
  State<Business_Classification> createState() =>
      _Business_ClassificationState();
}

class _Business_ClassificationState extends State<Business_Classification> {
  @override
  void initState() {
    context
        .read<SectiontypeBloc>()
        .add(GetSectionTypeEvent(section_id: '${widget.sectionid}'));
    super.initState();
  }

  final salary = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.type),
      ),
      body: BlocBuilder<SectiontypeBloc, SectionTypeState>(
          builder: (context, state) {
        if (state.sectionTyeStatus == Status.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.sectionTyeStatus == Status.success) {
          return ListView.builder(
            itemCount: state.sectiontype!.data!.length,
            itemBuilder: (c, i) => Opportunities(
              id: state.sectiontype!.data![i].id!,
              name: state.sectiontype!.data![i].title!,
              locationcompany:'' ,
              list: state.sectiontype!.data![i].media!.mediaUrl!,
              salary: state.sectiontype!.data![i].salary!.toString(),
            ),
          );
        } else
          return const Center(
            child: Text('Try Agian'),
          );
      }),
    );
  }
}

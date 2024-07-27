import 'package:emplooo/core/unified_api/status.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/type_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.type),
      ),
      body: BlocBuilder<SectiontypeBloc, SectionTypeState>(
          builder: (context, state) {
        if (state.SectionTyeStatus == Status.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.SectionTyeStatus == Status.success) {
          return ListView.builder(
              itemCount: state.datum.length,
              itemBuilder: (BuildContext context, int index) {
                return Opportunities(
                  name: state.datum[index].title ?? 'null',
                  locationcompany: state.datum[index].title ?? 'null',
                  List: widget.list,
                );
              });
        } else
          return const Center(
            child: Text('Try Agian'),
          );
      }),
    );
  }
}

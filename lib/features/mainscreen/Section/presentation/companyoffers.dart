import 'package:emplooo/features/mainscreen/Section/presentation/bloc/bloc/company_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/unified_api/status.dart';
import '../data/model/company_response_model.dart';
import 'opportunities.dart';

class CompanyOffers extends StatefulWidget {
  const CompanyOffers({super.key, required this.company});
  final CompanyModel company;
  @override
  State<CompanyOffers> createState() => _CompanyOffersState();
}

class _CompanyOffersState extends State<CompanyOffers> {
  @override
  void initState() {
    context.read<CompanyBloc>().add(
          GetCompanyJbsEvent(id: widget.company.id!),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.company.name!),
      ),
      body: BlocBuilder<CompanyBloc, CompaniesState>(builder: (context, state) {
        if (state.getJobsStatus == Status.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.getJobsStatus == Status.success) {
          return ListView.builder(
            itemCount: state.jobs.length,
            itemBuilder: (c, i) => Opportunities(
              name: state.jobs[i].title!,
              locationcompany: '',
              list: state.jobs[i].media!.mediaUrl!,
              salary: state.jobs[i].salary!.toString(),
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

import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/bloc/job_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/unified_api/status.dart';

class Oppertunities_Details extends StatefulWidget {
  const Oppertunities_Details({
    super.key,required this.id
  });
final int id;
  @override

  State<Oppertunities_Details> createState() => _Oppertunities_DetailsState();
}

class _Oppertunities_DetailsState extends State<Oppertunities_Details> {
  @override
    void initState() {
    context
        .read<JobDetailsBloc>()
        .add(GetJobIdEvent(Job_Id: '${widget.id}'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     final List<String> skills=['hgcc','gtcgjv'];
     final List<String> Certificates=['hgcc','gtcgjv'];
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.opportunitiesdetails_oppertunitiesdetail.tr()),
      ),
      body: BlocBuilder<JobDetailsBloc, JobDetailsState>(
        builder: (context, state) {
          if(state.jobdetailsStatus== Status.loading){
             return const Center(
            child: CircularProgressIndicator(),
          );
          }
        else if(state.jobdetailsStatus==Status.success){
          return SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: screenheight * 0.5,
                  child: Image.asset(
                    'assets/images/dd.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenheight * 0.3),
                  child: Material(
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(100.0)),
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 30.0, top: 30.0, bottom: 30.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.info_outline),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(state.jobdetails!.data!.title!,
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Age: ',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(
                                  width: 150.0,
                                ),
                                Text(state.jobdetails!.data!.age.toString()),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Gender: ',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 125.0,
                                ),
                                Text('feminine and masculine'),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Count: ',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(
                                  width: 130.0,
                                ),
                                Text(state.jobdetails!.data!.count!.toString()),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Salary:',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(
                                  width: 135.0,
                                ),
                                Text(state.jobdetails!.data!.salary!.toString()),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'The required number:',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 55.0,
                                ),
                                Text('2'),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Connect With us:',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 70.0,
                                ),
                                Text('0935230788'),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'company name:',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(
                                  width: 80.0,
                                ),
                                Text(state.jobdetails!.data!.title!),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Certificates required:',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(
                                  width: 45.0,
                                ),
                                   Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              height: 160,
                              child:
                               ListView.builder(
                                itemCount: state.jobdetails!.data!.educationJob!.length,
                                itemBuilder: (BuildContext context, int index){
                                return Text(state.jobdetails!.data!.educationJob?[index]);
                               }),
                            ),
                          ],
                        ),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Skills required:',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(
                                  width: 75.0,
                                ),
                                Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              height: 160,
                              child:
                               ListView.builder(
                                itemCount: state.jobdetails!.data!.educationJob!.length,
                                itemBuilder: (BuildContext context, int index){
                                return Text(Certificates[index]);
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
          );}else
           return const Center(
            child: Text('Try Agian'),
          );
        },
      ),
    );
  }
}

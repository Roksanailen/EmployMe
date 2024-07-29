import 'package:emplooo/core/unified_api/status.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/bloc/company_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Section/presentation/company.dart';
import '../../Section/presentation/remotework.dart';
import '../../Section/presentation/typework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final image = [
    'assets/images/vv.png',
    'assets/images/mm.png',
    'assets/images/dd.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
  ];
  final type = [
    'Medical opportunities',
    'Administrative opportunities',
    'Information opportunities',
    'Architecture opportunities',
    'Architecture opportunities',
    'Architecture opportunities',
    'Architecture opportunities',
  ];
  final companyname = [
    'Osman',
    'Razi',
    'Al_Ressala',
    'Al_Ashrafia',
    'Al_Qaterji Company',
    'PlatForm',
    'PlatForm',
  ];
  final companyimage = [
    'assets/images/vv.png',
    'assets/images/mm.png',
    'assets/images/dd.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/vv.png',
    'assets/images/mm.png',
  ];
  final remotimage = [
    'assets/images/w0.png',
    'assets/images/rr.png',
    'assets/images/w9.png',
    'assets/images/w3.png',
    'assets/images/w4.png',
    'assets/images/w5.png',
    'assets/images/w6.png',
    'assets/images/w7.png',
    'assets/images/w8.png',
    'assets/images/w9.png',
  ];
  final remotename = [
    'flutter developer',
    'Sales & Call Cenner',
    'flutter developer',
    'flutter developer',
    'flutter developer',
    'flutter developer',
    'flutter developer',
    'flutter developer',
    'flutter developer',
  ];
  final salaryremote = [
    '1700000 P.s',
    '1600000 P.s',
    '1400000 P.s',
    '2000000 P.s',
    '1400000 P.s',
    '1700000 P.s',
    '1600000 P.s',
    '1400000 P.s',
    '2000000 P.s',
    '1400000 P.s',
  ];
  final remoteage = [
    '20_40',
    '24_35',
    '23_30',
    '27_37',
    '20_35',
    '20_40',
    '24_35',
    '23_30',
    '27_37',
    '20_35',
  ];
  final experiencesremote = [
    '2',
    '4',
    '5',
    '7',
    '1',
    '2',
    '4',
    '5',
    '7',
    '1',
  ];
  final phoneremote = [
    '0935230788',
    '0935450793',
    '0985450793',
    '0935230788',
    '0935450793',
    '0985450793',
    '0935230788',
    '0935450793',
    '0985450793',
    '0985450793',
  ];
  final sectionid = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Discover",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Suitable job ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                height: 320,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return TypeWork(
                      image: image[index],
                      id: 1,
                      type: type[index],
                      list: '',
                      locationcompany: '',
                      name: '',
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Opacity(
                        opacity: 0.8,
                        child: Image.asset(
                          'assets/images/work.png',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      )),
                  const Positioned(
                      top: 40,
                      left: 50,
                      child: Text(
                        'Remot Work',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 270,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return Remote_Work(
                        imageremote: remotimage[index],
                        nameremot: remotename[index],
                        salaryremote: salaryremote[index],
                        remoteage: remoteage[index],
                        phoneremote: phoneremote[index],
                        experiencesremote: experiencesremote[index],
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Take a look at our companies ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 320,
                child: BlocBuilder<CompanyBloc, CompaniesState>(
                  builder: (context, state) {
                    if (state.status == Status.loading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state.status == Status.success) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.companies.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Company(
                            companyImage: companyimage[index],
                            company: state.companies[index],
                          );
                        },
                      );
                    } else
                      return const Center(
                        child: Text('Try Again'),
                      );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

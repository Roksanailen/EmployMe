import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/bloc/company_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/section_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/company.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/remotework.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/typework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/unified_api/status.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<SectionBloc>().add(GetSectionsEvent());
    context.read<CompanyBloc>().add(GetCompaniesEvent());
  }

  final image = [
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

  final type = [
    'Medical opportunities',
    'Administrative opportunities',
    'Information opportunities',
    'Architecture opportunities',
    'Architecture opportunities',
    'Architecture opportunities',
    'Architecture opportunities',
  ];
  final list = [
    'assets/images/vv.png',
    'assets/images/mm.png',
    'assets/images/dd.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
    'assets/images/rr.png',
  ];
  final name = [
    'surgeon',
    'techer',
    'surgeon',
    'surgeon',
    'surgeon',
    'surgeon',
    'surgeon',
  ];
  final locationcompany = [
    'Aleppo',
    'Aleppo',
    'Aleppo',
    'Aleppo',
    'Aleppo',
    'Aleppo',
    'Aleppo',
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
  final Typeofcompany = [];
  final emailcompany = [];
  final phonecompany = [];
  final mobilecompany = [];
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
    LocaleKeys.Home_remotename1.tr(),
    LocaleKeys.Home_remotework2.tr(),
    LocaleKeys.Home_remotework3.tr(),
    LocaleKeys.Home_remotework4.tr(),
    LocaleKeys.Home_remotework5.tr(),
    LocaleKeys.Home_remotename1.tr(),
    LocaleKeys.Home_remotework2.tr(),
    LocaleKeys.Home_remotework3.tr(),
    LocaleKeys.Home_remotework4.tr(),
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
  final salaryremote = [
    LocaleKeys.Home_remotesalary.tr(),
    LocaleKeys.Home_remotesalary1.tr(),
    LocaleKeys.Home_remotesalary2.tr(),
    LocaleKeys.Home_remotesalary3.tr(),
    LocaleKeys.Home_remotesalary1.tr(),
    LocaleKeys.Home_remotesalary.tr(),
    LocaleKeys.Home_remotesalary1.tr(),
    LocaleKeys.Home_remotesalary2.tr(),
    LocaleKeys.Home_remotesalary3.tr()
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
  final sectionid = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
               Text(
                LocaleKeys.Home_home.tr(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 320,
                child: BlocBuilder<SectionBloc, SectionsState>(
                    builder: (context, state) {
                  if (state is SectionsLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is SecionsSuccess) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.sections.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TypeWork(
                          id: state.sections[index].id ?? 1,
                          image:state.sections[index].media?.firstOrNull?.mediaUrl??'https://th.bing.com/th/id/OIP.3_HUaKDzlLojariqt8vFoQAAAA?rs=1&pid=ImgDetMain',
                          type: state.sections[index].name ?? "null",
                          list: state.sections[index].media?.firstOrNull?.medaUrl??'',
                          name: state.sections[index].name ?? "null",
                          locationcompany: locationcompany[index],
                        );
                      },
                    );
                  } else
                    return Center(
                      child: 
                      Text( LocaleKeys.Home_tryagain.tr() ));
                }),
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
                        )
                            .animate()
                            .scale(duration: const Duration(milliseconds: 900)),
                      )),
                   Positioned(
                      top: 40,
                      left: 50,
                      child: Text(
                        LocaleKeys.Home_remotwork.tr(),
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
                    }).animate().fadeIn(duration: const Duration(seconds: 2)),
              ),
              const SizedBox(
                height: 20,
              ),
               Text(LocaleKeys.Home_company.tr(),
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
                            company: state.companies[index],
                            companyImage: companyimage[index],
                          );
                        },
                      );
                    } else
                      return Center(
                        child: Text(LocaleKeys.Home_tryagain4.tr()),
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

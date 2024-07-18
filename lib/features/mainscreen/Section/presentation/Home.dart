import 'package:emplooo/features/mainscreen/Section/presentation/bloc/bloc/company_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/section_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/type_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/company.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/remotework.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/typework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    context.read<TypesBloc>().add(GetTypessEvent());
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
  final sectionid=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Discover your Suitable job ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
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
                          sectionid: sectionid[index],
                          image: image[index],
                          type: state.sections[index].name ?? "null",
                          list: list[index],
                          name: name[index],
                          locationcompany: locationcompany[index],
                        );
                      },
                    );
                  } else
                    return const Center(child: Text('Try again'));
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
                        ).animate()
              .scale(duration: Duration(milliseconds: 900)),
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
                      return const Remote_Work();
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
                child: BlocBuilder<CompanyBloc,CompaniesState>(
                  builder: (context, state) {
                    if(state is CompaniesLoading){
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }else if(state is CompaniesSuccess){
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.companies.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Company(
                          companyimage: companyimage[index],
                          companyname: companyname[index],
                        );
                      },
                    );}
                    else return const Center(child: Text('Try Again'),);
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

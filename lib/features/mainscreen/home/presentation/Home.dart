import 'package:emplooo/features/mainscreen/home/presentation/company.dart';
import 'package:emplooo/features/mainscreen/home/presentation/remotework.dart';
import 'package:emplooo/features/mainscreen/home/presentation/typework.dart';
import 'package:flutter/material.dart';

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
                height: 20.0,
              ),
              SizedBox(
                height: 320,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Type_Work(
                      image: image[index],
                      type: type[index],
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return const Company();
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

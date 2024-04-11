import 'package:emplooo/features/information/presentation/aboutcv.dart';
import 'package:emplooo/features/information/presentation/abouthome.dart';
import 'package:emplooo/features/information/presentation/aboutsearch.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
      SizedBox(height: 20),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Home_Information()));
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 232, 240, 247),
              border: Border.all(color: Colors.blue, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'About Home',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(width: 20),
                Lottie.asset(
                  'assets/images/home.json',
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                )
              ],
            )),
      ),
      SizedBox(height: 20),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Search_Information()));
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 3),
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 232, 240, 247),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'About search',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(width: 20),
                Lottie.asset(
                  'assets/images/search.json',
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.30,
                )
              ],
            )),
      ),
      SizedBox(height: 20),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Cv_Information()));
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 232, 240, 247),
                border: Border.all(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'About Cv',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                Lottie.asset(
                  'assets/images/cv.json',
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                )
              ],
            )),
      ),
      SizedBox(height: 20),
    ]))));
  }
}

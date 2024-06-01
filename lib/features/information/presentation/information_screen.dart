import 'package:emplooo/features/information/presentation/aboutcv.dart';
import 'package:emplooo/features/information/presentation/abouthome.dart';
import 'package:emplooo/features/information/presentation/aboutsearch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
      const SizedBox(height: 20),
      InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Home_Information()));
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 240, 247),
              border: Border.all(color: Colors.blue, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'About Home',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ).animate().scale(duration: 800.ms),
                const SizedBox(width: 20),
                Lottie.asset(
                  'assets/images/home.json',
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.30,
                )
              ],
            )),
      ),
      const SizedBox(height: 20),
      InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Search_Information()));
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 3),
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 232, 240, 247),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'About search',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ).animate().scale(duration: 900.ms),
                const SizedBox(width: 20),
                Lottie.asset(
                  'assets/images/search.json',
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.30,
                )
              ],
            )),
      ),
      const SizedBox(height: 20),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Cv_Information()));
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 240, 247),
                border: Border.all(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'About Cv',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ).animate().scale(duration: 850.ms),
                const SizedBox(
                  width: 20,
                ),
                Lottie.asset(
                  'assets/images/cv.json',
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.30,
                )
              ],
            )),
      ),
      const SizedBox(height: 20),
            InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Cv_Information()));
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 240, 247),
                border: Border.all(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'About Cv',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ).animate().scale(duration: 850.ms),
                const SizedBox(
                  width: 20,
                ),
                Lottie.asset(
                  'assets/images/cv.json',
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.30,
                )
              ],
            )),
      ),
    ]))));
  }
}

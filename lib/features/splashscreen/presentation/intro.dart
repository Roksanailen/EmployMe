import 'package:emplooo/features/auth/presentation/sign_up.dart';
import 'package:emplooo/features/auth/presentation/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 177, 208, 216),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Find your best job in our application EmployMe',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: Color.fromARGB(255, 37, 103, 156)),
          ),
          Lottie.asset('assets/images/introo.json', width: 400, height: 400),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Signin()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: const BorderSide(
                    style: BorderStyle.solid,
                    color: Color.fromARGB(255, 21, 68, 200),
                    width: 3),
                elevation: 0,
                fixedSize: const Size(250, 40)),
            child: const Text(
              'Signin',
              style: TextStyle(color: Colors.black, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Signup()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: const BorderSide(
                    style: BorderStyle.solid,
                    color: Color.fromARGB(255, 21, 68, 200),
                    width: 3),
                elevation: 0,
                fixedSize: const Size(250, 40)),
            child: const Text(
              'Signup',
              style: TextStyle(color: Colors.black, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ),
    );
  }
}

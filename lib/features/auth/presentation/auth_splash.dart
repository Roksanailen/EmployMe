import 'package:emplooo/features/auth/presentation/sign_in.dart';
import 'package:emplooo/features/auth/presentation/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AuthSplash extends StatefulWidget {
  const AuthSplash({super.key});

  @override
  State<AuthSplash> createState() => _AuthSplashState();
}

class _AuthSplashState extends State<AuthSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 240, 247),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Find your best job in our application EmployMe',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ),
                Lottie.asset('assets/images/introo.json',
                    width: 300, height: 280),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signin()));
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
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()));
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
                const SizedBox(
                  height: 20,
                )
              ]),
        ),
      ),
    );
  }
}

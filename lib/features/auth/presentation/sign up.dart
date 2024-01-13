import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widgets/main_text_field.dart';
import '../../mainscreen/homescreen.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
          Lottie.asset('assets/images/Animation - 1705013705322.json',
              width: double.infinity, height: double.infinity,fit: BoxFit.cover),
         Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 400,
              height: 200,
              child: Lottie.asset('assets/images/signup.json'),
            ),
            MainTextField(
                controller: TextEditingController(),
                label: 'Name',
                keyboardType: TextInputType.name,
                fillColor: Colors.transparent,
                borderColor: Colors.black,
                width: MediaQuery.of(context).size.width * 0.55,
                contentPadding: const EdgeInsets.all(5),
                prefixIcon: const Icon(Icons.person)),
            const SizedBox(
              height: 30,
            ),
            MainTextField(
                controller: TextEditingController(),
                fillColor: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                borderColor: Colors.black,
                hint: 'enter your email',
                contentPadding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.55,
                prefixIcon: const Icon(Icons.lock)),
            const SizedBox(
              height: 30,
            ),
            MainTextField(
                controller: TextEditingController(),
                label: 'password',
                fillColor: const Color.fromARGB(0, 0, 0, 0),
                borderColor: Colors.black,
                width: MediaQuery.of(context).size.width * 0.55,
                contentPadding: const EdgeInsets.all(5),
                prefixIcon: const Icon(Icons.email)),
            const SizedBox(
              height: 30,
            ),
            MainTextField(
              controller: TextEditingController(),
              fillColor: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              label: 'Phone',
              keyboardType: TextInputType.phone,
              borderColor: Colors.black,
              keyboardAppearance: true,
              hint: 'enter your phone',
              contentPadding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.55,
              prefixIcon: const Icon(Icons.phone),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home_Screen()));},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(style: BorderStyle.solid),
                  elevation: 0,
                  fixedSize: const Size(100, 35)),
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

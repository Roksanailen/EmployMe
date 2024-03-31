import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widgets/main_text_field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Lottie.asset('assets/images/Animation - 1705013705322.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              MainTextField(
                  controller: TextEditingController(),
                  label: 'Email',
                  fillColor: Colors.transparent,
                  hint: 'enter your email',
                  borderColor: const Color.fromARGB(255, 25, 25, 65),
                  borderRadius: BorderRadius.circular(20),
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
                  label: 'Password',
                  borderColor: const Color.fromARGB(255, 25, 25, 65),
                  hint: 'enter your password',
                  contentPadding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.55,
                  prefixIcon: const Icon(Icons.lock)),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(style: BorderStyle.solid),
                    elevation: 0,
                    fixedSize: const Size(90, 35)),
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
          ),
        ]));
  }
}

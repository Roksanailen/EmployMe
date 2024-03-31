import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widgets/main_text_field.dart';

class ProfilEdit extends StatefulWidget {
  const ProfilEdit({super.key});

  @override
  State<ProfilEdit> createState() => _ProfilEditState();
}

class _ProfilEditState extends State<ProfilEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const Color.fromARGB(255, 177, 208, 216),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  child: LottieBuilder.asset(
                    'assets/images/edit1.json',
                    height: MediaQuery.of(context).size.height * 0.80,
                    width: MediaQuery.of(context).size.width * 0.50,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      MainTextField(
                          controller: TextEditingController(),
                          label: 'Name',
                          keyboardType: TextInputType.name,
                          fillColor: Colors.transparent,
                          borderColor: Colors.black,
                          width: MediaQuery.of(context).size.width * 0.40,
                          contentPadding: const EdgeInsets.all(5),
                          prefixIcon: const Icon(Icons.person)),
                      SizedBox(
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
                          width: MediaQuery.of(context).size.width * 0.40,
                          prefixIcon: const Icon(Icons.lock)),
                      const SizedBox(
                        height: 30,
                      ),
                      MainTextField(
                          controller: TextEditingController(),
                          label: 'Phone',
                          keyboardType: TextInputType.name,
                          fillColor: Colors.transparent,
                          borderColor: Colors.black,
                          width: MediaQuery.of(context).size.width * 0.40,
                          contentPadding: const EdgeInsets.all(5),
                          prefixIcon: const Icon(Icons.phone)),
                      const SizedBox(
                        height: 30,
                      ),
                      MainTextField(
                          controller: TextEditingController(),
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: 'Password',
                          keyboardType: TextInputType.emailAddress,
                          borderColor: Colors.black,
                          hint: '******',
                          contentPadding: const EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width * 0.40,
                          prefixIcon: const Icon(Icons.lock)),
                      const SizedBox(
                        height: 30,
                      ),
                      MainTextField(
                          controller: TextEditingController(),
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: 'Language',
                          borderColor: Colors.black,
                          hint: 'change your language',
                          contentPadding: const EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width * 0.40,
                          prefixIcon: const Icon(Icons.language)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(style: BorderStyle.solid),
                  elevation: 0,
                  fixedSize: const Size(100, 35)),
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));
  }
}

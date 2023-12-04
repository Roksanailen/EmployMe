import 'package:flutter/material.dart';

import '../../../core/widgets/main_text_field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/log6.jpg'), fit: BoxFit.cover)),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              MainTextField(
                  controller: TextEditingController(),
                  label: 'Email',
                  fillColor: Colors.transparent,
                  hint: 'enter your email',
                  borderColor: Color.fromARGB(255, 25, 25, 65),
                  borderRadius: BorderRadius.circular(20),
                  width: MediaQuery.of(context).size.width * 0.55,
                  contentPadding: EdgeInsets.all(5),
                  prefixIcon: Icon(Icons.email)),
              SizedBox(
                height: 30,
              ),
              MainTextField(
                  controller: TextEditingController(),
                  fillColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  label: 'Password',
                  borderColor: Color.fromARGB(255, 25, 25, 65),
                  hint: 'enter your password',
                  contentPadding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.55,
                  prefixIcon: Icon(Icons.lock))
            ]),
          ),
        ));
  }
}

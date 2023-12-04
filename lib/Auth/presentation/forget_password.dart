import 'package:flutter/material.dart';

import '../../main_text_field.dart';

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
              MainTextFormField(
                  Cotroller: TextEditingController(),
                  label: 'Email',
                  filled: true,
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                  fillColor: Colors.transparent,
                  hint: 'enter your email',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 44, 43, 43), fontSize: 17, fontWeight: FontWeight.bold),
                  borderColor: Color.fromARGB(255, 25, 25, 65),
                  borderRadius: BorderRadius.circular(20),
                  width: MediaQuery.of(context).size.width * 0.55,
                  contentPadding: EdgeInsets.all(5),
                  prefix: Icon(Icons.email)),
              SizedBox(
                height: 30,
              ),
              MainTextFormField(
                  Cotroller: TextEditingController(),
                  fillColor: Colors.transparent,
                  filled: true,
                  borderRadius: BorderRadius.circular(20),
                  label: 'Password',
                  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                  borderColor: Color.fromARGB(255, 25, 25, 65),
                  hint: 'enter your password',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 44, 43, 43), fontSize: 17, fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.55,
                  prefix: Icon(Icons.lock))
            ]),
          ),
        ));
  }
}

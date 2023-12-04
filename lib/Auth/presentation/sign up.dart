import 'package:emplooo/Auth/presentation/signin.dart';
import 'package:flutter/material.dart';

import '../../main_text_field.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/log6.jpg'), fit: BoxFit.fill)),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            MainTextFormField(
                controller: TextEditingController(),
                label: 'Name',
                filled: true,
                labelStyle: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                fillColor: Colors.transparent,
                hint: 'enter your name',
                hintStyle: TextStyle(color: Color.fromARGB(255, 44, 43, 43), fontSize: 17, fontWeight: FontWeight.bold),
                borderColor: Color.fromARGB(255, 25, 25, 65),
                borderRadius: BorderRadius.circular(20),
                width: MediaQuery.of(context).size.width * 0.55,
                contentPadding: EdgeInsets.all(5),
                prefix: Icon(Icons.person)),
            SizedBox(
              height: 30,
            ),
            MainTextFormField(
                controller: TextEditingController(),
                fillColor: Colors.transparent,
                filled: true,
                borderRadius: BorderRadius.circular(20),
                label: 'Email',
                labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                borderColor: Color.fromARGB(255, 25, 25, 65),
                hint: 'enter your email',
                hintStyle: TextStyle(color: Color.fromARGB(255, 44, 43, 43), fontSize: 17, fontWeight: FontWeight.bold),
                contentPadding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.55,
                prefix: Icon(Icons.lock)),
            SizedBox(
              height: 30,
            ),
            MainTextFormField(
                controller: TextEditingController(),
                label: 'password',
                filled: true,
                labelStyle: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                fillColor: Colors.transparent,
                hint: 'enter your password',
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
              controller: TextEditingController(),
              fillColor: Colors.transparent,
              filled: true,
              borderRadius: BorderRadius.circular(20),
              label: 'Phone',
              labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
              borderColor: Color.fromARGB(255, 25, 25, 65),
              hint: 'enter your phone',
              hintStyle: TextStyle(color: Color.fromARGB(255, 44, 43, 43), fontSize: 17, fontWeight: FontWeight.bold),
              contentPadding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.55,
              prefix: Icon(Icons.phone),
            ),
            SizedBox(
              height: 30,
            ),
            MainTextFormField(
                controller: TextEditingController(),
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
                prefix: Icon(Icons.lock)),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, side: BorderSide(style: BorderStyle.solid), elevation: 0, fixedSize: Size(100, 35)),
              child: Text(
                'Register',
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

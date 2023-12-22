import 'package:flutter/material.dart';

import '../../../core/widgets/main_text_field.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/log6.jpg'), fit: BoxFit.fill)),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            MainTextField(
                controller: TextEditingController(),
                label: 'Name',
                fillColor: Colors.transparent,
                borderColor: Color.fromARGB(255, 25, 25, 65),
                width: MediaQuery.of(context).size.width * 0.55,
                contentPadding: EdgeInsets.all(5),
                prefixIcon: Icon(Icons.person)),
            SizedBox(
              height: 30,
            ),
            MainTextField(
                controller: TextEditingController(),
                fillColor: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                label: 'Email',
                borderColor: Color.fromARGB(255, 25, 25, 65),
                hint: 'enter your email',
                contentPadding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.55,
                prefixIcon: Icon(Icons.lock)),
            SizedBox(
              height: 30,
            ),
            MainTextField(
                controller: TextEditingController(),
                label: 'password',
                fillColor: Colors.transparent,
                borderColor: Color.fromARGB(255, 25, 25, 65),
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
              label: 'Phone',
              borderColor: Color.fromARGB(255, 25, 25, 65),
              hint: 'enter your phone',
              contentPadding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.55,
              prefixIcon: Icon(Icons.phone),
            ),
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
                prefixIcon: Icon(Icons.lock)),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: BorderSide(style: BorderStyle.solid),
                  elevation: 0,
                  fixedSize: Size(100, 35)),
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

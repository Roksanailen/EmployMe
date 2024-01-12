import 'dart:ui';

import 'package:emplooo/core/widgets/main_app_bar.dart';
import 'package:emplooo/features/mainscreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widgets/main_text_field.dart';
import 'sign up.dart';

class Signin extends StatelessWidget {
  Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: ValueKey(1),
        child: Scaffold(
            body: Stack(children: [
          Lottie.asset('assets/images/Animation - 1705013705322.json',
              width: double.infinity, height: double.infinity,fit: BoxFit.cover),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 500,
                height: 200,
                child: Lottie.asset('assets/images/Animation - 17 (1).json'),
              ),
              SizedBox(
                height: 20,
              ),
              MainTextField(
                controller: TextEditingController(),
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                fillColor: Colors.transparent,
                hint: 'enter your email',
                borderColor: Colors.black,
                borderRadius: BorderRadius.circular(20),
                width: MediaQuery.of(context).size.width * 0.55,
                contentPadding: EdgeInsets.all(5),
                prefixIcon: Icon(Icons.email),
              ),
              SizedBox(
                height: 30,
              ),
              MainTextField(
                  controller: TextEditingController(),
                  fillColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  label: 'Password',
                  borderColor: Colors.black,
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
                    fixedSize: Size(90, 35)),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        'sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      )),
                  SizedBox(
                    width: 40,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: Text(
                        'forget password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 29, 27, 27),
                            fontSize: 16),
                      ))
                ],
              ),
            ]),
          ),
        ])));
  }
}

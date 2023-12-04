import 'package:flutter/material.dart';

import '../../../core/widgets/main_text_field.dart';
import 'sign up.dart';

class Signin extends StatelessWidget {
  Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: ValueKey(1),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/log6.jpg'), fit: BoxFit.fill)),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/e.jpg'),
                maxRadius: 80,
              ),
              SizedBox(
                height: 40,
              ),
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
                  prefixIcon: Icon(Icons.lock)),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, side: BorderSide(style: BorderStyle.solid), elevation: 0, fixedSize: Size(90, 35)),
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        'sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      )),
                  SizedBox(
                    width: 40,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: Text(
                        'forget password',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 29, 27, 27), fontSize: 16),
                      ))
                ],
              ),
            ]),
          ),
        ));
  }
}

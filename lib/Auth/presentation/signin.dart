import 'package:emplooo/Auth/presentation/sign%20up.dart';
import 'package:emplooo/main_text_field.dart';
import 'package:flutter/material.dart';

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
              MainTextFormField(
                  controller: TextEditingController(),
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

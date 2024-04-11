import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Search_Information extends StatefulWidget {
  const Search_Information({super.key});

  @override
  State<Search_Information> createState() => _Search_InformationState();
}

class _Search_InformationState extends State<Search_Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(
              width: 200,
              height: 200,
              child: LottieBuilder.asset(
                'assets/images/question.json',
                height: MediaQuery.of(context).size.height * 0.60,
                width: MediaQuery.of(context).size.width * 0.50,
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 232, 240, 247),
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.elliptical(50, 50),
                    topLeft: Radius.circular(160),
                    bottomLeft: Radius.elliptical(50, 50),
                    bottomRight: Radius.circular(160),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                        """   _ This interface helps you create a personal account\n  
   if you are a new user or log in normally.\n   
  _ This interface helps you enter your personal information,\n
   credentials, and experiences that assist us in determining 
   
   the suitable job position for you.\n  
  _ To find the suitable job, all you need to do is fill in the\n    information.
""",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        )),
                  ],
                )),
            SizedBox(
              height: 20,
            )
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AiDetailes extends StatelessWidget {
  const AiDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Ai Work details'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                'assets/images/rr.png',
                fit: BoxFit.cover,
              ),
              height: screenheight * 0.5,
            ),
            Container(
              margin: EdgeInsets.only(top: screenheight * 0.3),
              child: Material(
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(100.0)),
                child: Container(
                  padding: EdgeInsets.only(left: 30.0, top: 30.0, bottom: 30.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.info_outline),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'title',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'job description: ',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Text('ryhllnvvm........'),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'count: ',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Text('3 '),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Age:',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Text('44'),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'gender',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Text('male'),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'salary',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 45.0,
                            ),
                            Text('12000000')
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'company',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Text('platform'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

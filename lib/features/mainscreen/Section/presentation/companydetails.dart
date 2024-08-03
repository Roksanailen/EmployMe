import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Company_Details extends StatelessWidget {
  const Company_Details({
    super.key,
    required this.companyname,
    required this.companyimage,
    required this.locationcompany,
    required this.typeOfcompany,
    required this.emailcompany,
    required this.phoncompany,
    required this.mobilcompany,
  });

  final String companyname;
  final String companyimage;
  final String locationcompany;
  final String typeOfcompany;
  final String emailcompany;
  final String phoncompany;
  final String mobilcompany;
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.companydetails_companydetails.tr()),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                'assets/images/vv.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ).animate().fadeIn(duration: Duration(milliseconds: 900)),
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
                              companyname,
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
                              LocaleKeys.companydetails_companylocation.tr(),
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            Text(locationcompany),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              LocaleKeys.companydetails_companydetails3.tr(),
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 95.0,
                            ),
                            Text(typeOfcompany),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              LocaleKeys.companydetails_emailcompany.tr(),
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 165.0,
                            ),
                            Text(emailcompany),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              LocaleKeys.companydetails_phonecompany.tr(),
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 160.0,
                            ),
                            Text(phoncompany),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              LocaleKeys.companydetails_mobailcompany.tr(),
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 160.0,
                            ),
                            Text(mobilcompany),
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

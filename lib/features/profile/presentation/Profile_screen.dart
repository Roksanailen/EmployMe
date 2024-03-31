import 'package:emplooo/core/widgets/text_field.dart';
import 'package:emplooo/features/information/presentation/information_screen.dart';
import 'package:emplooo/features/profile/presentation/profile_edit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widgets/list_tile.dart';
import '../../../core/widgets/main_text_field.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: 30,
        backgroundColor: Colors.white54,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Information()));
            },
            child: Icon(
              Icons.info,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilEdit()));
            },
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80)),
              color: Colors.blue.shade200),
          child: Column(children: [
            LottieBuilder.asset(
              'assets/images/profil2.json',
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            Text(
              'UserName',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              MainListTile(
                  dense: true,
                  isThreeLine: true,
                  enabled: true,
                  leading: Icon(Icons.man),
                  title: ('roksan')),
              MainListTile(
                  dense: true,
                  isThreeLine: true,
                  enabled: true,
                  leading: Icon(Icons.email),
                  title: ('ss@gmail.com')),
              MainListTile(
                dense: true,
                enabled: true,
                leading: Icon(Icons.phone),
                title: ('0941845129'),
                isThreeLine: true,
              ),
              MainListTile(
                  dense: true,
                  isThreeLine: true,
                  enabled: true,
                  leading: Icon(Icons.lock),
                  title: ('******')),
              MainListTile(
                  dense: true,
                  isThreeLine: true,
                  enabled: true,
                  leading: Icon(Icons.language),
                  title: ('English')),
            ])),
      ]),
    );
  }
}

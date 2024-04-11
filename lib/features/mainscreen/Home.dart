import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      // appBar: AppBar(
      //     leading: IconButton(
      //         icon: Icon(Icons.menu),
      //         onPressed: () {
      //           if (ZoomDrawer.of(context)!.isOpen()) {
      //             ZoomDrawer.of(context)!.close();
      //           } else {
      //             ZoomDrawer.of(context)!.open();
      //           }
      //         })),
    );

  }
}

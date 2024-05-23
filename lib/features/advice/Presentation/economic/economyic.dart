import 'package:emplooo/features/advice/Presentation/advicearticture.dart';
import 'package:emplooo/features/advice/Presentation/economic/Bazar.dart';
import 'package:emplooo/features/advice/Presentation/economic/amin.dart';
import 'package:flutter/material.dart';

import '../adviceinformatic.dart';

class Economic extends StatefulWidget {
  const Economic({super.key});

  @override
  State<Economic> createState() => _EconomicState();
}

class _EconomicState extends State<Economic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AdviceArt(
                type: 'Amin', image: 'assets/images/ec.jpg', Page: Amin()),
            AdviceArt(
                type: 'Bazar', image: 'assets/images/bazar.jpg', Page: Bazar()),
          ],
        ),
      ),
    );
  }
}

import 'package:emplooo/features/advice/Presentation/adviceinformatic.dart';
import 'package:emplooo/features/advice/Presentation/arcitecture/presentation/max.dart';
import 'package:emplooo/features/advice/Presentation/arcitecture/presentation/revit.dart';
import 'package:flutter/material.dart';

import '../../advicearticture.dart';

class Arcitecture extends StatefulWidget {
  const Arcitecture({super.key});

  @override
  State<Arcitecture> createState() => _ArcitectureState();
}

class _ArcitectureState extends State<Arcitecture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AdviceArt(type: 'Max', image: 'assets/images/3ds.png', Page: Max()),
           AdviceArt(
                type: 'Revit', image: 'assets/images/revit.jpg', Page: Revit()),
                AdviceArt(
                type: 'Rino', image: 'assets/images/revit.jpg', Page: Revit()),
                
                
          ],
        ),
      ),
    );
  }
}

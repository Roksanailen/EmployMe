import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:emplooo/features/advice/Presentation/advicetype.dart';
import 'package:emplooo/features/advice/Presentation/arcitecture/presentation/arcitecture.dart';
import 'package:emplooo/features/advice/Presentation/economic/economyic.dart';
import 'package:emplooo/features/advice/Presentation/informatic/informatic.dart';
import 'package:emplooo/features/advice/Presentation/other.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Advice extends StatefulWidget {
  const Advice({super.key});

  @override
  State<Advice> createState() => _AdviceState();
}

class _AdviceState extends State<Advice> {
   List<String> Pages = [
    LocaleKeys.advice_advice.tr(),
    LocaleKeys.advice_advice1.tr(),
    LocaleKeys.advice_advice2.tr(),
    LocaleKeys.advice_advice3.tr()
  ];

  final image = [
    'assets/images/cop.jpg',
    'assets/images/art',
    'assets/images/eco',
    'assets/images/art',
  ];

  final type = [
    LocaleKeys.advice_advice5.tr(),
        LocaleKeys.advice_advice6.tr(),
        LocaleKeys.advice_advice7.tr(),
        LocaleKeys.advice_adviced9.tr()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Lottie.asset('assets/images/Animation - 1705013705322.json',
          width: double.infinity, height: double.infinity, fit: BoxFit.cover),
      Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Informatic()));
                          },
                          child:  AdviceType(
                            type:
                                (LocaleKeys.advice_advice11.tr()),
                            image: ('assets/images/copp.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Arcitecture()));
                          },
                          child: AdviceType(
                            type:
                                (LocaleKeys.advice_advice12.tr()),
                            image: ('assets/images/arti.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Economic()));
                          },
                          child:  AdviceType(
                            type: (LocaleKeys.advice_adviced13.tr()),
                            image: ('assets/images/ec.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Others()));
                          },
                          child: const AdviceType(
                            type: ('develop your self '),
                            image: ('assets/images/ec.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ]),
          ),
        ),
      )
    ]));
  }
}

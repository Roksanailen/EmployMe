import 'package:emplooo/features/information/presentation/information_screen.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_type_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/remotework.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/typework.dart';
import 'package:emplooo/features/search/presentation/aichances.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //     appBar: AppBar(elevation: 25, toolbarHeight: 30, actions: [
      //   Padding(
      //     padding: const EdgeInsets.only(right: 20),
      //     child: InkWell(
      //       onTap: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => Information()));
      //       },
      //       child: Icon(
      //         Icons.info,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      // ])
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
                height: 600,
                width: 600,
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          crossAxisCount: 2,
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return AiChances();
                        }),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:emplooo/features/mainscreen/Section/presentation/opportunitiesdetails.dart';
import 'package:emplooo/features/search/data/models/get_jobs_ai_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';


class AiChances extends StatelessWidget {
  const AiChances({
    super.key,
    required this.job,
  });
  final SearchJobAi job;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return Oppertunities_Details(id:job.id!);
        }));
      },
      child: SizedBox(
        height: 250,
        width: 250,
        child: Stack(
          children: [
            SizedBox(
              height: 230.0,
              width: 210.0,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    'assets/images/rr.png',
                    fit: BoxFit.cover,
                  )
                      .animate()
                      .scale(duration: const Duration(milliseconds: 900)),
                ),
              ),
            ),
            Positioned(
              bottom: 45,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.info_outline,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 9.0,
                        ),
                        Text(
                          job.title ?? '',
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                        .animate()
                        .scale(duration: const Duration(milliseconds: 600)),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.create_new_folder_outlined,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 7.0,
                        ),
                        Text(
                          job.salary?.toString() ?? '',
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                        .animate()
                        .scale(duration: const Duration(milliseconds: 600)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

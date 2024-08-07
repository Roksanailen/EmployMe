import 'package:emplooo/features/mainscreen/Section/presentation/opportunitiesdetails.dart';
import 'package:flutter/material.dart';


class Opportunities extends StatefulWidget {
  const Opportunities({
    super.key,
    required this.name,
    required this.locationcompany,
    required this.list,
    required this.salary,
    required this.id,
  });
  final String name;
  final String list;
  final String locationcompany;
  final String salary;
  final int id;

  @override
  State<Opportunities> createState() => _OpportunitiesState();
}

class _OpportunitiesState extends State<Opportunities> {
  @override
  void initState() { 
    super.initState();
    print(widget.list)
;  }
  @override
  Widget build(BuildContext context) {
    return  InkWell(
            onTap: () {              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Oppertunities_Details(
                      id: widget.id,
                    );
                  },
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 7,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                          ),
                          child: Image.network(
                            widget.list,
                            errorBuilder: (context, error, stackTrace) {
                              return Text(error.toString());

                            },
                            
                            height: 250,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.info_outline,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(widget.name),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.attach_money_outlined,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              widget.salary,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ));
      
  }
}

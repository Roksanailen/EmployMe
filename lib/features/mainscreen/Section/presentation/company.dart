import 'package:easy_localization/easy_localization.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/company_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/companydetails.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/companyoffers.dart';
import 'package:flutter/material.dart';

class Company extends StatelessWidget {
  const Company({
    super.key,
    required this.company,
    required this.companyImage,
  });
  final CompanyModel company;
  final String companyImage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return CompanyOffers(
              company: company,
            );
          }));
        },
        child: SizedBox(
          height: 200,
          width: 250,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                        child: Image.asset(
                          companyImage,
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: [
                          Text(
                            company.name!.tr(),
                            style: const TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Company_Details(
                                    companyname: company.name!,
                                    companyimage: companyImage,
                                    locationcompany: company.address!,
                                    typeOfcompany: company.type!,
                                    emailcompany: company.email!,
                                    phoncompany: company.phone!,
                                    mobilcompany: company.mobile!,
                                  );
                                }));
                              },
                              child: const Icon(Icons.info))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

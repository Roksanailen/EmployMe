import 'package:emplooo/features/mainscreen/Section/presentation/companydetails.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/companyoffers.dart';
import 'package:flutter/material.dart';


class Company extends StatelessWidget {
  const Company({super.key,required this.companyimage,required this.companyname,required this.locationcompany,
  required this.Typeofcompany,required this.emailcompany,required this.phoncompany,required this.mobilcompany, });
  final String companyimage;
  final String companyname;
  final String locationcompany;
  final String Typeofcompany;
  final String emailcompany;
  final String phoncompany;
  final String mobilcompany;
  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
        Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context){
                return CompanyOffers(
                  
                );
              }));
       },
        child: Container(
          height: 200,
          width: 250,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 7,
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                       
                      ),
                      child: Image.asset(companyimage,
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
                 SizedBox(height: 30.0,),     
                 Row(
             
                   children: [
                    
                     Text(companyname,style: TextStyle(color: Colors.black),),
                    SizedBox(width: 70,),
                     InkWell( onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Company_Details(
              companyname: companyname,
              companyimage: companyimage,
              locationcompany: locationcompany,
              Typeofcompany: Typeofcompany,
              emailcompany: emailcompany,
              phoncompany: phoncompany,
              mobilcompany: mobilcompany,
            );
          }));
        },
                      child: Icon(Icons.info))
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

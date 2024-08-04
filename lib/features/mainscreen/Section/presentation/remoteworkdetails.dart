import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Remote_Work_Details extends StatelessWidget {
  const Remote_Work_Details({super.key,required this.salaryremote,required this.experiencesremote,required this. phoneremote,
  required this.remoteage,required this.imageremote,required this.nameremot});
  final String salaryremote;
  final String experiencesremote;
  final String phoneremote;
  final String remoteage;
  final String imageremote;
  final String nameremot;
  @override
  Widget build(BuildContext context) {
    final List<String> skillsremote=[LocaleKeys.remoteworkdetails_remoteskills.tr(),
    LocaleKeys.remoteworkdetails_remoteskills1.tr(),
    LocaleKeys.remoteworkdetails_remoteskilles2.tr(),
    LocaleKeys.remoteworkdetails_remoteskills3.tr(),
    LocaleKeys.remoteworkdetails_remteskills5.tr(),
    LocaleKeys.remoteworkdetails_remoteskills7.tr()];
    var screenheight=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text(nameremot),),
        body: SingleChildScrollView(
          child: Stack(
          children: [
            SizedBox(
              height: screenheight*0.5,
              child: Image.asset(imageremote,
              width: double.infinity,
              fit: BoxFit.cover,
             ),),
            Container(
              margin: EdgeInsets.only(top: screenheight*0.3),
              child: Material(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(100.0)),
                child: Container(
                  padding: const EdgeInsets.only(left: 30.0,top: 30.0 , bottom: 30.0),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                            const Icon(Icons.info_outline),
                            const SizedBox(width: 10,),
                        Text(nameremot,style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),),
                     
                      ],),
                      const SizedBox(height: 40.0 ,),
                    Row( 
                      children: [
                       Text(LocaleKeys.remoteworkdetails_remoted.tr(),style: TextStyle(color: Colors.blue,),),
                        const SizedBox(width: 150.0,),
                        Text(remoteage),
                      ],
                    ),
                    const SizedBox(height: 40.0,),
                      Row(
                      
                      children: [
                       Text(LocaleKeys.remoteworkdetails_remoted2.tr(),style: TextStyle(color: Colors.blue,),),
                        const SizedBox(width: 105.0,),
                        Text(experiencesremote),
                      ],
                    ),
                    const SizedBox(height: 40.0,),
                      Row(
                      
                      children: [
                     Text(LocaleKeys.remoteworkdetails_remoted4.tr(),style: TextStyle(color: Colors.blue,),),
                      const SizedBox(width: 135.0,),
                      Text(salaryremote),
                      ],
                    ),
                    const SizedBox(height: 40.0,),
                    Row(
                      
                      children: [
                       Text(LocaleKeys.remoteworkdetails_remoted5.tr(),style: TextStyle(color: Colors.blue,),),
                        const SizedBox(width: 70.0,),
                        Text(phoneremote),
                      ],
                    ),
                
                        const SizedBox(height: 40.0,),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(LocaleKeys.remoteworkdetails_remoted8.tr(),style: TextStyle(color: Colors.blue,),),
                        const SizedBox(width: 45.0,),
                        Text(LocaleKeys.remoteworkdetails_remoted7.tr()),
                          
                      ],
                    ),
                       const SizedBox(height: 40.0,),
                         Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(LocaleKeys.remoteworkdetails_remotd9.tr(),style: TextStyle(color: Colors.blue,),),
                        const SizedBox(width: 75.0,),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              height: 160,
                              child:
                               ListView.builder(
                                itemCount: skillsremote.length,
                                itemBuilder: (BuildContext context, int index){
                                return Text(skillsremote[index]);
                               }),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ],
                   ),
                 ),
                  ),
                ),
              ),
            
          ],
              ),
        ),
    );
  }
}
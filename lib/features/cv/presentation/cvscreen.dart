import 'package:emplooo/core/resources/font_manager.dart';
import 'package:emplooo/core/widgets/main_text_field.dart';
import 'package:emplooo/features/cv/presentation/cirtificate.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Cv_Screen extends StatelessWidget {
  DateTime selectedDate= DateTime.now();
   Cv_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var FirstnameControler =TextEditingController();
    var FathernameControler =TextEditingController();
    var LastnameControler =TextEditingController();
    var AgeControler=TextEditingController();
    var GenderControler=TextEditingController();
    var MaritalstatusControler=TextEditingController();
    var LocationControler=TextEditingController();
    var DateofbirthControler=TextEditingController();
        return Scaffold(
      body:  Stack(children: [
          Lottie.asset('assets/images/Animation - 1705013705322.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
            
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('personal Information',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 20,),
                      MainTextField(controller:FirstnameControler,
                      label:'First_Name',
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      ),
                      keyboardType: TextInputType.name,
                      fillColor: Colors.transparent,
                      hint: 'Enter your first name',
                      borderColor: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.55,
                      contentPadding: const EdgeInsets.all(5),
                      ),
                         SizedBox(height: 20,),
                      MainTextField(controller:FathernameControler,
                      label:'Father_Name',
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      ),
                      keyboardType: TextInputType.name,
                      fillColor: Colors.transparent,
                      hint: 'Enter your father name',
                      borderColor: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.55,
                      contentPadding: const EdgeInsets.all(5),
                      ),
                      SizedBox(height: 20,),
                      MainTextField(controller:LastnameControler,
                      label:'Last_Name',
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      ),
                      keyboardType: TextInputType.name,
                      fillColor: Colors.transparent,
                      hint: 'Enter your last name',
                      borderColor: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.55,
                      contentPadding: const EdgeInsets.all(5),
                      ),
                    
                      SizedBox(height: 20,),
                      MainTextField(controller:GenderControler,
                      label:'Gender',
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      ),
                      keyboardType: TextInputType.name,
                      fillColor: Colors.transparent,
                      hint: 'Enter your gender',
                      borderColor: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.55,
                      contentPadding: const EdgeInsets.all(5),
                      ),
                      SizedBox(height: 20,),
                      MainTextField(controller:MaritalstatusControler,
                      label:'Marital_Status',
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      ),
                      keyboardType: TextInputType.name,
                      fillColor: Colors.transparent,
                      hint: 'Enter your marital status',
                      borderColor: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.55,
                      contentPadding: const EdgeInsets.all(5),
                      ),
                       SizedBox(height: 20,),
                      MainTextField(controller:LocationControler,
                      label:'Location',
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      ),
                      keyboardType: TextInputType.name,
                      fillColor: Colors.transparent,
                      hint: 'Enter your Location',
                      borderColor: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.55,
                      contentPadding: const EdgeInsets.all(5),
                      ),
                         SizedBox(height: 20,),
                      MainTextField(controller:AgeControler,
                      label:'Age',
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      ),
                      keyboardType: TextInputType.number,
                      fillColor: Colors.transparent,
                      hint: 'Enter your age',
                      borderColor: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.55,
                      contentPadding: const EdgeInsets.all(5),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                         onTap: () async{final DateTime? dateTime= await showDatePicker(context: context,
                         initialDate: selectedDate,
                          firstDate: DateTime(1950),
                           lastDate: DateTime(2007)); },
                        child: MainTextField(
                        controller:DateofbirthControler,
                        enabled: true,
                        label:'Date_Of_Birth',
                        borderSide: const BorderSide(width: 1),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        ),
                        keyboardType: TextInputType.datetime,
                        fillColor: Colors.transparent,
                        hint: '${selectedDate.year} - ${selectedDate.month} -${selectedDate.day}',
                        borderColor: Colors.black,
                        width: MediaQuery.of(context).size.width * 0.55,
                        contentPadding: const EdgeInsets.all(5),
                        prefixIcon:Icon( Icons.arrow_drop_down,
                        size: 40,
                        ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                         Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
                  
                          return Cirtificate_Screen();}));
                      }, 
                       style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: const BorderSide(style: BorderStyle.solid),
                            elevation: 0,
                            fixedSize: const Size(90, 35)),
                            child: Text('Next',style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              
                            ),)),
                            SizedBox(height: 20,),
                    ],
                  ),
                ),
              )
              ]),
    );
  }
}
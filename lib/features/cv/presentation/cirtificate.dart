import 'dart:io';
import 'dart:typed_data';
import 'package:dotted_border/dotted_border.dart';
import 'package:emplooo/features/cv/presentation/skills.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';


class Cirtificate_Screen extends StatefulWidget {
  Cirtificate_Screen({super.key});

  @override
  State<Cirtificate_Screen> createState() => _Cirtificate_ScreenState();
}
class _Cirtificate_ScreenState extends State<Cirtificate_Screen> {
 File? _image;
//  Uint8List?imagememory;
//  PickFile() async{
//   FilePickerResult? result =await FilePicker.platform.pickFiles(
//     type: FileType.custom,
//     allowedExtensions:['jpg','png','jepg']
//   );
//   if(result!=null){
//     File file =File(result.files.single.path!);
//     imagememory =file.readAsBytesSync();
//     setState(() {
      
//     });
//   }
//  }
 final _picker = ImagePicker();
Future<void> _openImagePicker() async {
   final XFile? pickedImage =
       await _picker.pickImage(source: ImageSource.gallery);
   if (pickedImage != null) {
     setState(() {
       _image = File(pickedImage.path);
     });
   }
  }
  List listItem=['University', 'Institute','High_Scool'];
  List listItem1=['Informalics', 'Medicine','Architecture','Education'];
  List listIteminformation=['Flutter', 'Front_end','Backend','Ui_Ux','Surgeon', 'Cardoilogist','nurse','Informant'];
  var valueChoose;
  var valueChoose1;
   var valueChooseinformation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Lottie.asset('assets/images/Animation - 1705013705322.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('Education Information',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          padding: EdgeInsets.only(left: 16,right: 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))
                          ),
                          child: DropdownButton(hint: Text('cirtificate'),
                            dropdownColor: Colors.white,
                            icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                            iconSize: 40,
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black,
                            fontSize: 22,),
                           value: valueChoose, onChanged: (newValue){
                          setState(() {
                            valueChoose =newValue;
                          });
                          },
                          items: listItem.map((valueItem){
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem));
                          },).toList(),
                          ),
                        ),
                      ),SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          padding: EdgeInsets.only(left: 16,right: 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))
                          ),
                          child: DropdownButton(hint: Text('Certificate_name'),
                            dropdownColor: Colors.white,
                            icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                            iconSize: 40,
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black,
                            fontSize: 22,),
                           value: valueChooseinformation, onChanged: (newValue1){
                          setState(() {
                            valueChooseinformation =newValue1;
                          });
                          },
                          items: listItem1.map((valueItem1){
                            return DropdownMenuItem(
                              value: valueItem1,
                              child: Text(valueItem1));
                          },).toList(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          padding: EdgeInsets.only(left: 16,right: 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))
                          ),
                          child: DropdownButton(hint: Text('Specialization_name'),
                            dropdownColor: Colors.white,
                            icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                            iconSize: 40,
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black,
                            fontSize: 22,),
                    value: valueChoose1, onChanged: (newValue){
                          setState(() {
                            valueChoose1 =newValue;
                          });
                          },
                          items: listIteminformation.map((valueItem){
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem));
                          },).toList(),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ElevatedButton(
                    onPressed: ()=> _openImagePicker(),
                    style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: const BorderSide(style: BorderStyle.solid),
                            elevation: 0,
                            fixedSize: const Size(170, 50)),
                    child: const Text('Select An Image',style: TextStyle(color: Colors.black,fontSize: 18),),
                  ),
                  SizedBox(height: 20,),
                    DottedBorder(
                      color: Colors.black,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(20),
                      dashPattern: [12 ,3],
                      child: Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width * 0.40,
                                    height: 180,
                                    color:  Colors.transparent,
                                    child: _image!= null
                        ? Image.file(_image!, fit: BoxFit.cover)
                        : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('+',style: TextStyle(color: Colors.black, fontSize:40, ),),
                            const Text('Add a photo of the certificate'),
                          ],
                        ),
                 ),
                    ),
                    SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                         Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
                  
                          return Skills_Screen();}));
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
              
              
              
                      
                    ],
                  ),
                ),
              )
        ],
      ),
    );
  }
}
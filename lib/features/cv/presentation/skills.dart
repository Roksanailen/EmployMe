
import 'dart:io';
import 'dart:js';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widgets/main_text_field.dart';

class Skills_Screen extends StatefulWidget {
   Skills_Screen({super.key});

  @override
  State<Skills_Screen> createState() => _Skills_ScreenState();
}

class _Skills_ScreenState extends State<Skills_Screen> {
   File? _image;
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
  List<String> _selectedItems=[];
  List<String> _selectedItemsskills=[];

  void _showMultiSelect(BuildContext context) async {
      final List<String> items=[
    'Arabic',
    'Englash',
    'fransh',
  ];
     final List<String> itemsskills=[
    'Icdl',
    'dart',
    'figma',
  ];
  final List<String>? results = await showDialog(
   context: context, 
   builder: (BuildContext context) {
   return MultiSelected(items: items);
  },
  );
  if(results!=null){
    setState(() {
      _selectedItems =results;
    });
  }

  }
  void _showMultiSelectskills(BuildContext context) async {
   
     final List<String> itemsskills=[
    'Icdl',
    'dart',
    'figma',
  ];
  final List<String>? resultsskills = await showDialog(
   context: context, 
   builder: (BuildContext context) {
   return MultiSelected(items: itemsskills);
  },
  );
  if(resultsskills!=null){
    setState(() {
      _selectedItemsskills =resultsskills;
    });
  }
  }
var valueChoose;
List listItem=['1', '2','3','4','5','6','7','8','9','10'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.asset('assets/images/Animation - 1705013705322.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
             
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    SizedBox(width: 10,),

                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 130,),
                            Text('Skills',
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(width: 130,),
                          ],
                        ),
                        SizedBox(height: 20,),
                         ElevatedButton(
                          onPressed: (){
                          _showMultiSelect(context);},
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text('Languages',style: TextStyle(color: Colors.black,fontSize: 20),),
                               SizedBox(width: 10,),
                               Icon(Icons.arrow_drop_down,color: Colors.black,size: 40,), ],),
                            style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(width: 1, ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                            ),
                          ),
                          elevation: 0,
                          fixedSize:  Size(MediaQuery.of(context).size.width * 0.65, 50)),
                           ),
                           const Divider(height: 30,),
                           Wrap(
                            spacing: 10.0 ,
                            runSpacing: 5.0,
                            children: _selectedItems.map((e) => Chip(label: Text(e),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )
                            ),
                            backgroundColor: Colors.transparent,
                           
                           )).toList(),
                           ),
                           SizedBox(height: 20,),       
                    Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        padding: EdgeInsets.only(left: 16,right: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))
                        ),
                        child: DropdownButton(hint: Text('Years Experiences',style: TextStyle(color: Colors.black,fontSize: 20),),
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
                      SizedBox(height: 50,), 
                          ElevatedButton(
                          onPressed: (){
                          _showMultiSelectskills(context);},
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text('Additional Experiences',style: TextStyle(color: Colors.black,fontSize: 20),),
                               SizedBox(width: 10,),
                               Icon(Icons.arrow_drop_down,color: Colors.black,size: 40,), ],),
                            style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(width: 1, ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                            ),
                          ),
                          elevation: 0,
                          fixedSize:  Size(MediaQuery.of(context).size.width * 0.65, 50)),
                           ),
                              const Divider(height: 30,),
                           Wrap(
                            spacing: 10.0 ,
                            runSpacing: 5.0,
                            children: _selectedItemsskills.map((e) => Chip(label: Text(e),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )
                            ),
                            backgroundColor: Colors.transparent,
                           
                           )).toList(),
                           ),
                           SizedBox(height: 20,),
                        
                
                       
                           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                              SizedBox(width: 80,),
                               ElevatedButton(
                  onPressed: ()=> _openImagePicker(),
                  style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(style: BorderStyle.solid),
                          elevation: 0,
                          fixedSize: const Size(170, 50)),
                  child: const Text('Select An Image',style: TextStyle(color: Colors.black,fontSize: 18),),
                ),
                 SizedBox(width: 80,),
                             ],
                           ),   
                      SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 65,),
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
                  SizedBox(width: 60,)
                      ],
                    ),
                       ],
                        ),
                    SizedBox(width: 10,),
                    ],
                 ),
        ],
      ),
    );
  }
}
class MultiSelected extends StatefulWidget {
  final List<String> items;
  const MultiSelected({super.key,required this.items});

  @override
  State<MultiSelected> createState() => _MultiSelectedStateState();
}

class _MultiSelectedStateState extends State<MultiSelected> {
  final List<String> _selectedItems=[];
  void _itemChange(String itemValue, bool isSelected){
    setState(() {
      if(isSelected){
        _selectedItems.add(itemValue);
      }else{
        _selectedItems.remove(itemValue);
      }
    });
  }
  void _cansal(BuildContext context){
    Navigator.pop(context);
  }
  void _submit(BuildContext context){
    Navigator.pop(context,_selectedItems);
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(title: Text('Select Topics'),
    content: SingleChildScrollView(
      child: ListBody(
        
        children:
        widget.items.map((item) => CheckboxListTile(
          value: _selectedItems.contains(item),
          title: Text(item),
          controlAffinity: ListTileControlAffinity.leading,
           onChanged: (isChecked)=> _itemChange(item, isChecked!),)).toList(),
      ),
    ),
    actions: [
      ElevatedButton(
       style:ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      side: const BorderSide(width: 1,),
      elevation: 0,
       ) , 
      onPressed:()=> _cansal(context) ,child: Text('Cancal',style: TextStyle(color: Colors.lightBlue)),),
      ElevatedButton(style:ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      side: const BorderSide(width: 1,),
      elevation: 0,
      ) , 
        onPressed:()=> _submit(context), child: Text('Submit',style: TextStyle(color: Colors.lightBlue),),)
    ],
    );
    
  }
}

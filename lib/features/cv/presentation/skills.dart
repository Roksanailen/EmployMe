import 'dart:io';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:emplooo/core/enums/request_status.dart';
import 'package:emplooo/core/toaster.dart';
import 'package:emplooo/features/cv/presentation/bloc/cv_bloc.dart';
import 'package:emplooo/features/search/presentation/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import '../data/models/ai_models.dart';

class Skills_Screen extends StatefulWidget {
  const Skills_Screen({super.key});

  @override
  State<Skills_Screen> createState() => _Skills_ScreenState();
}

class _Skills_ScreenState extends State<Skills_Screen> {
  File? _image;
  final _picker = ImagePicker();
  Uint8List? image;
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = await pickedImage.readAsBytes();
      setState(() {});
    }
  }

  List<SkillsAi> _selectedItems = [
    
  ];
  List<SkillsAi> _selectedItemsskills = [
   ];

  final List<SkillsAi> languages = [
    SkillsAi(selectedValue: 1, name: 'Arabic', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 7, name: 'English', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 5, name: 'German', value: ValueNotifier(0)),
     SkillsAi(selectedValue: 5, name: 'French', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 2, name: 'Russian', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 2, name: 'Chinese', value: ValueNotifier(0)),
   
  ];
  final List<SkillsAi> skills = [
    SkillsAi(selectedValue: 1, name: 'Communication', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 7, name: 'Revit Program', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 7, name: 'AutoCad', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 15, name: 'NCARB', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 3, name: 'Graphic Design', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 2, name: 'Vscode Program', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 2, name: 'MySql', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 15, name: 'Exspress js', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 2, name: 'Html', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 2, name: 'Dart Language', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 3, name: 'FireBase', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 8, name: 'React Native', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 4, name: 'Figma', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 7, name: 'Adobe XD', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 7, name: 'Python', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 3, name: 'PostgreSql', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 7, name: 'php', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 10, name: 'Restful Api', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 2, name: 'C++', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 4, name: 'Managerait', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 4, name: 'ICDL', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 15, name: 'PgMp', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 5, name: 'JavaScript', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 5, name: 'Json', value: ValueNotifier(0)),
    SkillsAi(selectedValue: 5, name: 'Bootstrap', value: ValueNotifier(0)),
  ];
  void _showMultiSelectLanguage(BuildContext context) async {
    final List<SkillsAi>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelected(items: languages);
      },
    );
    if (results != null) {
      setState(() {
        _selectedItems = results;
        print(_selectedItems);
        context.read<CvBloc>().add(EditLanguagesEvent(
            arabic: _selectedItems.contains(languages[0])
                ? languages[0].selectedValue
                : languages[0].value.value,
            english: _selectedItems.contains(languages[1])
                ? languages[1].selectedValue
                : languages[1].value.value,
            german: _selectedItems.contains(languages[2])
                ? languages[2].selectedValue
                : languages[2].value.value,
            French: _selectedItems.contains(languages[2])
                ? languages[2].selectedValue
                : languages[2].value.value,
            Russian: _selectedItems.contains(languages[2])
                ? languages[2].selectedValue
                : languages[2].value.value,
            Chinese: _selectedItems.contains(languages[2])
                ? languages[2].selectedValue
                : languages[2].value.value,
                
                ));
                
      });
    }
  }

  void _showMultiSelectskills(
      BuildContext context, List<SkillsAi> skills) async {
    final List<SkillsAi>? resultsskills = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelected(items: skills);
      },
    );
    if (resultsskills != null) {
      setState(() {
        _selectedItemsskills = resultsskills;
        context.read<CvBloc>().add(EditSkillsEvent(
              communication: _selectedItemsskills.contains(skills[0])
                  ? skills[0].selectedValue
                  : 0,
              revit: _selectedItemsskills.contains(skills[1])
                  ? skills[1].selectedValue
                  : 0,
              autoCad: _selectedItemsskills.contains(skills[2])
                  ? skills[2].selectedValue
                  : 0,
              nCARB: _selectedItemsskills.contains(skills[3])
                  ? skills[3].selectedValue
                  : 0,
              graphic: _selectedItemsskills.contains(skills[4])
                  ? skills[4].selectedValue
                  : 0,
              vscode: _selectedItemsskills.contains(skills[5])
                  ? skills[5].selectedValue
                  : 0,
              mySql: _selectedItemsskills.contains(skills[6])
                  ? skills[6].selectedValue
                  : 0,
              express: _selectedItemsskills.contains(skills[7])
                  ? skills[7].selectedValue
                  : 0,
              html: _selectedItemsskills.contains(skills[8])
                  ? skills[8].selectedValue
                  : 0,
              dart: _selectedItemsskills.contains(skills[9])
                  ? skills[9].selectedValue
                  : 0,
              fireBase: _selectedItemsskills.contains(skills[10])
                  ? skills[10].selectedValue
                  : 0,
              react: _selectedItemsskills.contains(skills[11])
                  ? skills[11].selectedValue
                  : 0,
              figma: _selectedItemsskills.contains(skills[12])
                  ? skills[12].selectedValue
                  : 0,
              adobe: _selectedItemsskills.contains(skills[13])
                  ? skills[13].selectedValue
                  : 0,
              python: _selectedItemsskills.contains(skills[14])
                  ? skills[14].selectedValue
                  : 0,
              postgreSql: _selectedItemsskills.contains(skills[15])
                  ? skills[15].selectedValue
                  : 0,
              php: _selectedItemsskills.contains(skills[16])
                  ? skills[16].selectedValue
                  : 0,
              restful: _selectedItemsskills.contains(skills[17])
                  ? skills[17].selectedValue
                  : 0,
              cpp: _selectedItemsskills.contains(skills[18])
                  ? skills[18].selectedValue
                  : 0,
              managerait: _selectedItemsskills.contains(skills[19])
                  ? skills[19].selectedValue
                  : 0,
              iCDL: _selectedItemsskills.contains(skills[20])
                  ? skills[20].selectedValue
                  : 0,
              pgMp: _selectedItemsskills.contains(skills[21])
                  ? skills[21].selectedValue
                  : 0,
              javaScript: _selectedItemsskills.contains(skills[22])
                  ? skills[22].selectedValue
                  : 0,
              json: _selectedItemsskills.contains(skills[23])
                  ? skills[23].selectedValue
                  : 0,
              bootstrap: _selectedItemsskills.contains(skills[24])
                  ? skills[24].selectedValue
                  : 0,
            ));
      });
    }
  }

  int? valueChoose;
  List<String> listItem = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10','11','12','13','14','15','16','17','18','19','20'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: BlocListener<CvBloc, CvState>(
        listener: (context, state) {
          if (state.status == RequestStatus.loading) {
            Toaster.showLoading();
          } else if (state.status == RequestStatus.success) {
            Toaster.closeLoading();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Search(
                  keyword: state.response,
                ),
              ),
            );
          } else {
            Toaster.closeLoading();
            //TODO view Error Message
          }
        },
        child: Stack(
          children: [
            // Lottie.asset('assets/images/Animation - 1705013705322.json',
            //     width: double.infinity,
            //     height: double.infinity,
            //     fit: BoxFit.cover),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 130,
                          ),
                          Text(
                            'Skills',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _showMultiSelectLanguage(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: const BorderSide(
                              width: 1,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            elevation: 0,
                            fixedSize: Size(
                                MediaQuery.of(context).size.width * 0.65, 50)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Languages',
                              style:
                                  TextStyle(color: Colors.black, 
                                  fontWeight: FontWeight.bold,
                                fontSize: 22),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 30,
                      ),
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 5.0,
                        children: _selectedItems
                            .map((e) => Chip(
                                  label: Text(e.name),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )),
                                  backgroundColor: Colors.transparent,
                                ))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: DropdownButton<int>(
                          hint: const Text(
                            'Years Experiences',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          dropdownColor: Colors.white,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          iconSize: 40,
                          isExpanded: true,
                          underline: const SizedBox(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                          value: valueChoose,
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue;
                            });
                            context
                                .read<CvBloc>()
                                .add(EditYearsEvent(years: newValue!));
                          },
                          items: listItem.map(
                            (valueItem) {
                              return DropdownMenuItem(
                                  value: int.parse(valueItem),
                                  child: Text(valueItem));
                            },
                          ).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _showMultiSelectskills(context, skills);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: const BorderSide(
                              width: 1,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            elevation: 0,
                            fixedSize: Size(
                                MediaQuery.of(context).size.width * 0.65, 50)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Additional Experiences',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 30,
                      ),
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 5.0,
                        children: _selectedItemsskills
                            .map((e) => Chip(
                                  label: Text(e.name),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )),
                                  backgroundColor: Colors.transparent,
                                ))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 80,
                          ),
                          ElevatedButton(
                            onPressed: () => _openImagePicker(),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side:
                                    const BorderSide(style: BorderStyle.solid),
                                elevation: 0,
                                fixedSize: const Size(170, 50)),
                            child: const Text(
                              'Select An Image',
                              style:
                                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                                fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 65,
                          ),
                          DottedBorder(
                            color: Colors.black,
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(20),
                            dashPattern: const [12, 3],
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.40,
                              height: 180,
                              color: Colors.transparent,
                              child: image != null
                                  ? Image.memory(image!, fit: BoxFit.cover)
                                  : const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '+',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 40,
                                          ),
                                        ),
                                        Text('Add a photo of the certificate',style:
                                  TextStyle(color: Colors.black, fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),),
                                      ],
                                    ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 110,
                          ),
                          BlocBuilder<CvBloc, CvState>(
                            builder: (context, state) {
                              return ElevatedButton(
                                  onPressed: () {
                                    if (state.validate()) {
                                      context
                                          .read<CvBloc>()
                                          .add(SendRequestEvent());
                                    }
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //     builder: (BuildContext context) {
                                    //   return const Search();
                                    // }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      side: const BorderSide(
                                          style: BorderStyle.solid),
                                      elevation: 0,
                                      fixedSize: const Size(120, 35)),
                                  child: const Text(
                                    'Submit',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ));
                            },
                          ),
                          const SizedBox(
                            width: 110,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MultiSelected extends StatefulWidget {
  final List<SkillsAi> items;
  const MultiSelected({super.key, required this.items});
  @override
  @override
  State<MultiSelected> createState() => _MultiSelectedStateState();
}

class _MultiSelectedStateState extends State<MultiSelected> {
  void initState() {
    
    
  }

  List<SkillsAi> _selectedItems = [];
  void _itemChange(SkillsAi itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  void _cansal(BuildContext context) {
    Navigator.pop(context);
  }

  void _submit(BuildContext context) {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Topics'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
                    value: _selectedItems.contains(item),
                    title: Text(item.name),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (isChecked) => _itemChange(item, isChecked!),
                  ))
              .toList(),
        ),
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: const BorderSide(
              width: 1,
            ),
            elevation: 0,
          ),
          onPressed: () => _cansal(context),
          child:
              const Text('Cancal', style: TextStyle(color: Colors.lightBlue)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: const BorderSide(
              width: 1,
            ),
            elevation: 0,
          ),
          onPressed: () => _submit(context),
          child: const Text(
            'Submit',
            style: TextStyle(color: Colors.lightBlue),
          ),
        )
      ],
    );
  }
}

import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:emplooo/features/cv/data/models/ai_models.dart';
import 'package:emplooo/features/cv/presentation/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import 'bloc/cv_bloc.dart';

class Cirtificate_Screen extends StatefulWidget {
  const Cirtificate_Screen({super.key});

  @override
  State<Cirtificate_Screen> createState() => _Cirtificate_ScreenState();
}

class _Cirtificate_ScreenState extends State<Cirtificate_Screen> {
  Uint8List? _image;
  final _picker = ImagePicker();
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      _image = await pickedImage.readAsBytes();
      setState(() {});
    }
  }

  List<CertificateAi> certificateDegree = [
    CertificateAi(name: 'Bachelor\'s', value: 1),
    CertificateAi(name: 'Master', value: 2),
    CertificateAi(name: 'PHD', value: 3),
    CertificateAi(name: 'Diploma', value: 0),
  ];
  List<SpecializationNameAi> specializationName = [
    SpecializationNameAi(name: 'Cardiology', value: 1),
    SpecializationNameAi(name: 'General Surgery', value: 2),
    SpecializationNameAi(name: 'Gastroenterologist', value: 3),
  ];
  List<EducationalInstituteAi> educational = [
    EducationalInstituteAi(name: 'Faculty of Medicine', value: 1),
    EducationalInstituteAi(name: 'Faculty of Pharmacy', value: 2),
    EducationalInstituteAi(name: 'Nursing School', value: 3),
    EducationalInstituteAi(name: 'Center Education', value: 4),
    EducationalInstituteAi(name: 'Faculty of IT', value: 7),
    EducationalInstituteAi(name: 'Civil Engineering', value: 9),
    EducationalInstituteAi(name: 'Architecture Engineering', value: 11),
    EducationalInstituteAi(name: 'Technical Engineering Institute', value: 12),
    EducationalInstituteAi(name: 'Faculty of Sience', value: 14),
    EducationalInstituteAi(name: 'Arts and Humanities', value: 16),
    EducationalInstituteAi(name: 'Business Adminstartion Institute', value: 20),
    EducationalInstituteAi(name: 'Faculty Of Economics', value: 22),
  ];
  CertificateAi? valueChoose;
  SpecializationNameAi? valueChoose1;
  EducationalInstituteAi? valueChooseinformation;
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Education Information',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: DropdownButton<CertificateAi>(
                        hint: const Text('cirtificate'),
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
                          context.read<CvBloc>().add(EditCertificateEvent(
                              certificate: newValue!.value));
                          setState(() {
                            valueChoose = newValue;
                          });
                        },
                        items: certificateDegree.map(
                          (valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem.name));
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: DropdownButton<EducationalInstituteAi>(
                        hint: const Text('Certificate_name'),
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
                        value: valueChooseinformation,
                        onChanged: (newValue1) {
                          context.read<CvBloc>().add(EditCertificateNameEvent(
                              certificateName: newValue1!.value));

                          setState(() {
                            valueChooseinformation = newValue1;
                          });
                        },
                        items: educational.map(
                          (valueItem1) {
                            return DropdownMenuItem(
                                value: valueItem1,
                                child: Text(valueItem1.name));
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: DropdownButton<SpecializationNameAi>(
                        hint: const Text('Specialization_name'),
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
                        value: valueChoose1,
                        onChanged: (newValue) {
                          context.read<CvBloc>().add(EditSpecializationEvent(
                              specialization: newValue!.value));

                          setState(() {
                            valueChoose1 = newValue;
                          });
                        },
                        items: specializationName.map(
                          (valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem.name));
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () => _openImagePicker(),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(style: BorderStyle.solid),
                        elevation: 0,
                        fixedSize: const Size(170, 50)),
                    child: const Text(
                      'Select An Image',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                      child: _image != null
                          ? Image.memory(_image!, fit: BoxFit.cover)
                          : const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '+',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                  ),
                                ),
                                Text('Add a photo of the certificate'),
                              ],
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const Skills_Screen();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(style: BorderStyle.solid),
                          elevation: 0,
                          fixedSize: const Size(90, 35)),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

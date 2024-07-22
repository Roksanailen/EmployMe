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
  List<SpecializationNameAi> specializationName = [
    SpecializationNameAi(name: 'Cardiology', educationId: 1, value: 1),
    SpecializationNameAi(name: 'General Surgery', educationId: 1, value: 2),
    SpecializationNameAi(name: 'Gastroenterologist', educationId: 1, value: 3),
    SpecializationNameAi(name: 'Gynecology', educationId: 1, value: 4),
    SpecializationNameAi(name: 'Anethesia', educationId: 1, value: 5),
    SpecializationNameAi(name: 'Neuru Surgery', educationId: 1, value: 6),
    SpecializationNameAi(name: 'Pedication', educationId: 1, value: 7),
    SpecializationNameAi(name: 'General Doctor', educationId: 1, value: 8),
    SpecializationNameAi(name: 'Nurse', educationId: 3, value: 10),
    SpecializationNameAi(name: 'Backend Laarvel', educationId: 7, value: 15),
    SpecializationNameAi(name: 'Backend ASP.net', educationId: 7, value: 16),
    SpecializationNameAi(name: 'Backend Nodejs', educationId: 7, value: 17),
    SpecializationNameAi(name: 'Backend django', educationId: 7, value: 18),
    SpecializationNameAi(name: 'Full Stack', educationId: 7, value: 19),
    SpecializationNameAi(name: 'Frontend html,css', educationId: 7, value: 20),
    SpecializationNameAi(name: 'Frontend ', educationId: 7, value: 21),
    SpecializationNameAi(name: 'Frontend Reactjs', educationId: 7, value: 22),
    SpecializationNameAi(name: 'Oracle Database', educationId: 7, value: 23),
    SpecializationNameAi(name: 'Microsoft SQL', educationId: 7, value: 24),
    SpecializationNameAi(name: 'Network Security', educationId: 7, value: 26),
    SpecializationNameAi(name: 'IT Administrator', educationId: 7, value: 27),
    SpecializationNameAi(name: 'UI/UX Designer', educationId: 7, value: 28),
    SpecializationNameAi(name: 'Developer Android', educationId: 7, value: 29),
    SpecializationNameAi(name: 'Devlopers IOS', educationId: 7, value: 30),
    SpecializationNameAi(name: 'Flutter Developer', educationId: 7, value: 31),
    SpecializationNameAi(name: 'Architecture', educationId: 11, value: 35),
    SpecializationNameAi(
        name: 'Assistant Architecture', educationId: 11, value: 36),
    SpecializationNameAi(name: 'Interior design', educationId: 11, value: 37),
    SpecializationNameAi(name: 'Civil Engineer', educationId: 19, value: 39),
    SpecializationNameAi(name: 'Physics', educationId: 14, value: 43),
    SpecializationNameAi(name: 'Chemistry', educationId: 14, value: 45),
    SpecializationNameAi(
        name: 'Laboratory Chemist', educationId: 14, value: 46),
    SpecializationNameAi(name: 'Science', educationId: 14, value: 48),
    SpecializationNameAi(name: 'English', educationId: 16, value: 52),
    SpecializationNameAi(name: 'French', educationId: 16, value: 54),
    SpecializationNameAi(name: 'Marketing', educationId: 22, value: 58),
    SpecializationNameAi(name: 'General Managment', educationId: 22, value: 59),
    SpecializationNameAi(name: 'Finances', educationId: 22, value: 60),
    SpecializationNameAi(name: 'Accounting', educationId: 22, value: 61),
  ];

  CertificateAi? valueChoose;
  SpecializationNameAi? valueChoose1;
  EducationalInstituteAi? valueChooseinformation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: Stack(
        children: [
          Lottie.asset('assets/images/Animation - 1705013705322.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
          Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.90,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80))),
                  child: SingleChildScrollView(
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
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.65,
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: DropdownButton<CertificateAi>(
                                hint: const Text(
                                  'cirtificate',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
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
                                  context.read<CvBloc>().add(
                                      EditCertificateEvent(
                                          certificate: newValue!.value));
                                  setState(() {
                                    valueChoose = newValue;
                                  });
                                },
                                items: certificateDegree.map(
                                  (valueItem) {
                                    return DropdownMenuItem(
                                        value: valueItem,
                                        child: Text(valueItem.name));
                                  },
                                ).toList(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.65,
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: DropdownButton<EducationalInstituteAi>(
                                hint: const Text(
                                  'Certificate_name',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
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
                                value: valueChooseinformation,
                                onChanged: (newValue1) {
                                  context.read<CvBloc>().add(
                                      EditCertificateNameEvent(
                                          certificateName: newValue1!.value));

                                  setState(() {
                                    valueChoose1 = null;
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
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.65,
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: DropdownButton<SpecializationNameAi>(
                                hint: const Text(
                                  'Specialization_name',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
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
                                value: valueChoose1,
                                onChanged: (newValue) {
                                  context.read<CvBloc>().add(
                                      EditSpecializationEvent(
                                          specialization: newValue!.value));

                                  setState(() {
                                    valueChoose1 = newValue;
                                  });
                                },
                                items: specializationName.where((element) {
                                  return switch (
                                      valueChooseinformation?.value) {
                                    7 || 12 => element.educationId == 7,
                                    2 || 14 => element.educationId == 14,
                                    20 || 22 => element.educationId == 22,
                                    3 => element.educationId == 3,
                                    4 => element.educationId == 22 ||
                                        element.educationId == 7,
                                    _ => true
                                  };
                                }).map(
                                  (valueItem) {
                                    return DropdownMenuItem(
                                        value: valueItem,
                                        child: Text(valueItem.name));
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
                                side:
                                    const BorderSide(style: BorderStyle.solid),
                                elevation: 0,
                                fixedSize: const Size(170, 50)),
                            child: const Text(
                              'Select An Image',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
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
                                        Text(
                                          'Add a photo of the certificate',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          BlocBuilder<CvBloc, CvState>(
                            builder: (context, state) {
                              return ElevatedButton(
                                  onPressed: () {
                                    if (state.validate2()) {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) {
                                        return const Skills_Screen();
                                      }));
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      side: const BorderSide(
                                          style: BorderStyle.solid),
                                      elevation: 0,
                                      fixedSize: const Size(90, 35)),
                                  child: const Text(
                                    'Next',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ));
                            },
                          ),
                        ],
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}

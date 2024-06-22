import 'package:emplooo/core/widgets/main_text_field.dart';
import 'package:emplooo/features/cv/presentation/bloc/cv_bloc.dart';
import 'package:emplooo/features/cv/presentation/cirtificate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class Cv_Screen extends StatefulWidget {
  const Cv_Screen({super.key});

  @override
  State<Cv_Screen> createState() => _Cv_ScreenState();
}

class _Cv_ScreenState extends State<Cv_Screen> {
  DateTime selectedDate = DateTime(1990, 1, 1);

  @override
  Widget build(BuildContext context) {
    var firstnameControler = TextEditingController();
    var fathernameControler = TextEditingController();
    var lastnameControler = TextEditingController();
    var ageControler = TextEditingController();
    var genderControler = TextEditingController();
    var maritalstatusControler = TextEditingController();
    var locationControler = TextEditingController();
    var dateofbirthControler = TextEditingController();
    return Scaffold(
      body: Stack(children: [
        Lottie.asset('assets/images/Animation - 1705013705322.json',
            width: double.infinity, height: double.infinity, fit: BoxFit.cover),
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'personal Information',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                MainTextField(
                  controller: firstnameControler,
                  label: 'First_Name',
                  borderSide: const BorderSide(width: 1),
                  borderRadius: const BorderRadius.only(
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
                const SizedBox(
                  height: 20,
                ),
                MainTextField(
                  controller: fathernameControler,
                  label: 'Father_Name',
                  borderSide: const BorderSide(width: 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
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
                const SizedBox(
                  height: 20,
                ),
                MainTextField(
                  controller: lastnameControler,
                  label: 'Last_Name',
                  borderSide: const BorderSide(width: 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
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
                const SizedBox(
                  height: 20,
                ),
                MainTextField(
                  controller: genderControler,
                  label: 'Gender',
                  borderSide: const BorderSide(width: 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
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
                const SizedBox(
                  height: 20,
                ),
                MainTextField(
                  controller: maritalstatusControler,
                  label: 'Marital_Status',
                  borderSide: const BorderSide(width: 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
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
                const SizedBox(
                  height: 20,
                ),
                MainTextField(
                  controller: locationControler,
                  label: 'Location',
                  borderSide: const BorderSide(width: 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
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
                const SizedBox(
                  height: 20,
                ),
                MainTextField(
                  controller: ageControler,
                  label: 'Age',
                  borderSide: const BorderSide(width: 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  onChanged: (value) {
                    context
                        .read<CvBloc>()
                        .add(EditAgeEvent(age: int.tryParse(value) ?? 0));
                  },
                  keyboardType: TextInputType.number,
                  fillColor: Colors.transparent,
                  hint: 'Enter your age',
                  borderColor: Colors.black,
                  width: MediaQuery.of(context).size.width * 0.55,
                  contentPadding: const EdgeInsets.all(5),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () async {
                    showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(1970, 1, 1),
                            lastDate: DateTime(2007, 8, 8))
                        .then((value) {
                      if (value != null) {
                        dateofbirthControler.text =
                            DateFormat('yyyy - MM - dd').format(value);
                      }
                    });
                  },
                  child: MainTextField(
                    controller: dateofbirthControler,
                    enabled: false,
                    label: 'Date_Of_Birth',
                    borderSide: const BorderSide(width: 1),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    keyboardType: TextInputType.datetime,
                    fillColor: Colors.transparent,
                    hint:
                        '${selectedDate.year} - ${selectedDate.month} -${selectedDate.day}',
                    borderColor: Colors.black,
                    width: MediaQuery.of(context).size.width * 0.55,
                    contentPadding: const EdgeInsets.all(5),
                    prefixIcon: const Icon(
                      Icons.arrow_drop_down,
                      size: 40,
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
                        return const Cirtificate_Screen();
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
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

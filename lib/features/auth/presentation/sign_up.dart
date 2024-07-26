import 'package:emplooo/core/extensions/validation_extensions.dart';
import 'package:emplooo/core/resources/global_function.dart';
import 'package:emplooo/core/toaster.dart';
import 'package:emplooo/features/auth/bloc/auth_bloc.dart';
import 'package:emplooo/features/cv/presentation/cvscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widgets/main_text_field.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();
    var national_numberController = TextEditingController();
    var emailController = TextEditingController();
    var usernameController = TextEditingController();
    var isPassword = ValueNotifier(false);
    var firstnameController = TextEditingController();
    var lastnameController = TextEditingController();
    return Scaffold(
      body: Stack(children: [
        Lottie.asset('assets/images/Animation - 1705013705322.json',
            width: double.infinity, height: double.infinity, fit: BoxFit.cover),
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) async {
            if (state.status == AuthStatus.loading) {
              Toaster.showLoading();
            } else if (state.status == AuthStatus.failed) {
              Toaster.closeLoading();
              Toaster.showToast('Try Again');
            } else if (state.status == AuthStatus.success) {
              await GlobalFunctions().storeToken(state.token!);
              Toaster.closeLoading();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cv_Screen(),
                  ));
            }
          },
          child: SingleChildScrollView(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.68,
                height: MediaQuery.of(context).size.height * 0.92,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(130),
                        bottomRight: Radius.circular(130))),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 400,
                          height: 90,
                          child: Lottie.asset('assets/images/signup.json'),
                        ),
                        MainTextField(
                            validator: (p0) => p0 != null && p0.length > 2
                                ? null
                                : 'must consisting of letters for example ahmad  ',
                            controller: firstnameController,
                            label: 'First Name',
                            keyboardType: TextInputType.name,
                            fillColor: Colors.transparent,
                            height: MediaQuery.of(context).size.height * 0.1,
                            borderColor: Colors.black,
                            width: MediaQuery.of(context).size.width * 0.52,
                            contentPadding: const EdgeInsets.all(5),
                            prefixIcon: const Icon(Icons.person)),
                        SizedBox(
                          height: 3,
                        ),
                        MainTextField(
                          validator: (p0) => p0 != null && p0.length > 2
                              ? null
                              : 'must consisting of letters for example ali  ',
                          controller: lastnameController,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: 'Last Name',
                          keyboardType: TextInputType.name,
                          borderColor: Colors.black,
                          keyboardAppearance: true,
                          hint: 'enter your last name',
                          contentPadding: const EdgeInsets.all(5),
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.52,
                          prefixIcon: const Icon(Icons.person_2_outlined),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        MainTextField(
                          validator: (p0) => p0 != null && p0.length > 2
                              ? null
                              : 'must consisting of letters for example ahmad  ',
                          controller: usernameController,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: 'User Name',
                          keyboardType: TextInputType.name,
                          borderColor: Colors.black,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.52,
                          keyboardAppearance: true,
                          hint: 'enter your full name',
                          contentPadding: const EdgeInsets.all(5),
                          prefixIcon: const Icon(Icons.person_3_rounded),
                        ),
                        SizedBox(height: 3),
                        MainTextField(
                            validator: (value) {
                              if (value != null && value.isValidEmail()) {
                                return null;
                              } else {
                                return 'must be valid email as (ss@gmail.com) ';
                              }
                            },
                            controller: emailController,
                            fillColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            label: 'Email',
                            keyboardType: TextInputType.emailAddress,
                            borderColor: Colors.black,
                            hint: 'enter your email',
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.52,
                            contentPadding: const EdgeInsets.all(5),
                            prefixIcon: const Icon(Icons.email)),
                        SizedBox(
                          height: 3,
                        ),
                        ValueListenableBuilder(
                          valueListenable: isPassword,
                          builder: (context, isPasswordValue, child) =>
                              MainTextField(
                                  isPassword: isPasswordValue,
                                  controller: passwordController,
                                  validator: (value) {
                                    if (value != null &&
                                        value.isValidPassword()) {
                                      return null;
                                    } else {
                                      return 'It must consist of 8 letters or numbers ';
                                    }
                                  },
                                  label: 'password',
                                  fillColor: const Color.fromARGB(0, 0, 0, 0),
                                  borderColor: Colors.black,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.52,
                                  contentPadding: const EdgeInsets.all(5),
                                  prefixIcon: const Icon(Icons.lock),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        isPassword.value = !isPasswordValue;
                                      },
                                      icon: const Icon(Icons.remove_red_eye))),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        MainTextField(
                          validator: (value) {
                            if (value != null && value.isValidPhone()) {
                              return null;
                            } else {
                              return 'must consisting of numbers example 0989877679 ';
                            }
                          },
                          controller: phoneController,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: 'Phone',
                          keyboardType: TextInputType.number,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.52,
                          borderColor: Colors.black,
                          keyboardAppearance: true,
                          hint: 'enter your phone',
                          contentPadding: const EdgeInsets.all(5),
                          prefixIcon: const Icon(Icons.phone),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        MainTextField(
                          controller: national_numberController,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: 'national number',
                          keyboardType: TextInputType.number,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.52,
                          borderColor: Colors.black,
                          keyboardAppearance: true,
                          hint: 'enter your national number',
                          contentPadding: const EdgeInsets.all(5),
                          prefixIcon: const Icon(Icons.numbers),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(RegisterEvent(
                                phone: phoneController.text,
                                password: passwordController.text,
                                email: emailController.text,
                                lastName: lastnameController.text,
                                firstName: firstnameController.text,
                                userName: usernameController.text,
                                idNumber: national_numberController.text));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              side: const BorderSide(style: BorderStyle.solid),
                              elevation: 0,
                              fixedSize: const Size(100, 35)),
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ]),
                ),
              ),
            ),
          )),
        ),
      ]),
    );
  }
}

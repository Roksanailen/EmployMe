import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
    var nationalNumbercontroller = TextEditingController();
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
                    builder: (context) => const Cv_Screen(),
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
                    borderRadius: const BorderRadius.only(
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
                                : LocaleKeys.signUp_Validsignup.tr(),
                            controller: firstnameController,
                            label: LocaleKeys.signUp_Firstname.tr(),
                            keyboardType: TextInputType.name,
                            fillColor: Colors.transparent,
                            height: MediaQuery.of(context).size.height * 0.1,
                            borderColor: Colors.black,
                            width: MediaQuery.of(context).size.width * 0.52,
                            contentPadding: const EdgeInsets.all(5),
                            prefixIcon: const Icon(Icons.person)),
                        const SizedBox(
                          height: 3,
                        ),
                        MainTextField(
                          validator: (p0) => p0 != null && p0.length > 2
                              ? null
                              : LocaleKeys.signUp_validsignup1.tr(),
                          controller: lastnameController,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: LocaleKeys.signUp_Lastname.tr(),
                          keyboardType: TextInputType.name,
                          borderColor: Colors.black,
                          keyboardAppearance: true,
                          hint: LocaleKeys.signUp_Lastname1.tr(),
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
                              : LocaleKeys.signUp_validusername1.tr(),
                          controller: usernameController,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: LocaleKeys.signUp_Username3.tr(),
                          keyboardType: TextInputType.name,
                          borderColor: Colors.black,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.52,
                          keyboardAppearance: true,
                          hint: LocaleKeys.signUp_Usernamehint.tr(),
                          contentPadding: const EdgeInsets.all(5),
                          prefixIcon: const Icon(Icons.person_3_rounded),
                        ),
                        const SizedBox(height: 3),
                        MainTextField(
                            validator: (value) {
                              if (value != null && value.isValidEmail()) {
                                return null;
                              } else {
                                return LocaleKeys.signUp_Validemail.tr();
                              }
                            },
                            controller: emailController,
                            fillColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            label: LocaleKeys.signUp_Email.tr(),
                            keyboardType: TextInputType.emailAddress,
                            borderColor: Colors.black,
                            hint: LocaleKeys.signUp_Emailhint.tr(),
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.52,
                            contentPadding: const EdgeInsets.all(5),
                            prefixIcon: const Icon(Icons.email)),
                        const SizedBox(
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
                                      return LocaleKeys.signUp_Validpassword3.tr();
                                    }
                                  },
                                  label: LocaleKeys.signUp_Password4.tr(),
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
                        const SizedBox(
                          height: 1,
                        ),
                        MainTextField(
                          validator: (value) {
                            if (value != null && value.isValidPhone()) {
                              return null;
                            } else {
                              return LocaleKeys.signUp_Validphone.tr();
                            }
                          },
                          controller: phoneController,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: LocaleKeys.signUp_phone.tr(),
                          keyboardType: TextInputType.number,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.52,
                          borderColor: Colors.black,
                          keyboardAppearance: true,
                          hint: LocaleKeys.signUp_Phonehint.tr(),
                          contentPadding: const EdgeInsets.all(5),
                          prefixIcon: const Icon(Icons.phone),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        MainTextField(
                          controller: nationalNumbercontroller,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          label: LocaleKeys.signUp_national.tr(),
                          keyboardType: TextInputType.number,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.52,
                          borderColor: Colors.black,
                          keyboardAppearance: true,
                          hint: LocaleKeys.signUp_Nationalhint.tr(),
                          contentPadding: const EdgeInsets.all(5),
                          prefixIcon: const Icon(Icons.numbers),
                        ),
                        const SizedBox(
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
                                idNumber: nationalNumbercontroller.text));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              side: const BorderSide(style: BorderStyle.solid),
                              elevation: 0,
                              fixedSize: const Size(100, 35)),
                          child:  Text(
                            LocaleKeys.signUp_Register.tr(),
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
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

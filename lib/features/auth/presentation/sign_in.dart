import 'package:emplooo/core/extensions/validation_extensions.dart';
import 'package:emplooo/features/auth/bloc/auth_bloc.dart';
import 'package:emplooo/features/auth/presentation/reset_password.dart';
import 'package:emplooo/features/cv/presentation/cvscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/resources/global_function.dart';
import '../../../core/toaster.dart';
import '../../../core/widgets/main_text_field.dart';
import 'sign_up.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    var userNameController = TextEditingController();
    var passwordController = TextEditingController();
    var isPassword = ValueNotifier(true);
    return Form(
        key: const ValueKey(1),
        child: Scaffold(
            body: Stack(children: [
          Lottie.asset('assets/images/Animation - 1705013705322.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
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
                      builder: (context) =>  Cv_Screen(),
                    ));
              }
            },
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 500,
                      height: 200,
                      child:
                          Lottie.asset('assets/images/Animation - 17 (1).json'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MainTextField(
                      controller: userNameController,
                      label: 'UserName',
                      borderSide: const BorderSide(width: 1),
                      keyboardType: TextInputType.emailAddress,
                      fillColor: Colors.transparent,
                      hint: 'enter your Name',
                      borderColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      width: MediaQuery.of(context).size.width * 0.55,
                      contentPadding: const EdgeInsets.all(5),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ValueListenableBuilder(
                      valueListenable: isPassword,
                      builder: (_, bool isPasswordValue, child) =>
                          MainTextField(
                              validator: (value) {
                                if (value != null && value.isValidPassword()) {
                                  return null;
                                } else {
                                  return 'please add a valid password';
                                }
                              },
                              isPassword: isPasswordValue,
                              controller: passwordController,
                              fillColor: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              label: 'Password',
                              borderColor: Colors.black,
                              hint: 'enter your password',
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.text,
                              contentPadding: const EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width * 0.55,
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    isPassword.value = !isPasswordValue;
                                  },
                                  icon: const Icon(Icons.remove_red_eye))),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(LoginEvent(
                            userName: userNameController.text,
                            password: passwordController.text));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(style: BorderStyle.solid),
                          elevation: 0,
                          fixedSize: const Size(90, 35)),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signup()));
                            },
                            child: const Text(
                              'sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                        const SizedBox(
                          width: 40,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ResetPassword()));
                            },
                            style: TextButton.styleFrom(),
                            child: const Text(
                              'forget password',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 29, 27, 27),
                                  fontSize: 16),
                            ))
                      ],
                    ),
                  ]),
            ),
          ),
        ])));
  }
}

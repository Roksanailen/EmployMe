import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:emplooo/core/extensions/validation_extensions.dart';
import 'package:emplooo/core/toaster.dart';
import 'package:emplooo/features/profile/data/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widgets/main_text_field.dart';
import '../bloc/profile_bloc.dart';

class ProfilEdit extends StatefulWidget {
  const ProfilEdit({
    super.key,
    required this.user,
  });
  final User user;

  @override
  State<ProfilEdit> createState() => _ProfilEditState();
}

class _ProfilEditState extends State<ProfilEdit> {
  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController(text: widget.user.userName);
    var formKey = GlobalKey<FormState>();
    var emailController = TextEditingController(text: widget.user.email);
    var phoneController = TextEditingController(text: widget.user.phone);
    var passwordController = TextEditingController();
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 177, 208, 216),
        body: BlocListener<ProfileBloc, ProfileState>(
          listenWhen: (previous, current) =>
              previous.updateStatus != current.updateStatus,
          listener: (context, state) {
            if (state.updateStatus == ProfileStatus.loading) {
              Toaster.showLoading();
            } else if (state.updateStatus == ProfileStatus.success) {
              Toaster.closeLoading();
              Navigator.pop(context);
            } else {
              Toaster.closeLoading();
            }
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: LottieBuilder.asset(
                        'assets/images/edit1.json',
                        height: MediaQuery.of(context).size.height * 0.80,
                        width: MediaQuery.of(context).size.width * 0.50,
                      ),
                    ),
                    Container(
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: formKey,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 80,
                            ),
                            MainTextField(
                                controller: nameController,
                                label: LocaleKeys.profileEdit_pro1.tr(),
                                keyboardType: TextInputType.name,
                                fillColor: Colors.transparent,
                                validator: (p0) => p0 != null && p0.length > 4
                                    ? null
                                    : LocaleKeys.profileEdit_pro2.tr(),
                                borderColor: Colors.black,
                                width: MediaQuery.of(context).size.width * 0.40,
                                contentPadding: const EdgeInsets.all(5),
                                prefixIcon: const Icon(Icons.person)),
                            const SizedBox(
                              height: 30,
                            ),
                            MainTextField(
                                controller: emailController,
                                fillColor: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                validator: (p0) => p0?.isValidEmail() ?? false
                                    ? null
                                    : LocaleKeys.profileEdit_pro3.tr(),
                                label: LocaleKeys.profileEdit_pro4.tr(),
                                keyboardType: TextInputType.emailAddress,
                                borderColor: Colors.black,
                                hint: LocaleKeys.profileEdit_pro6.tr(),
                                contentPadding: const EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width * 0.40,
                                prefixIcon: const Icon(Icons.lock)),
                            const SizedBox(
                              height: 30,
                            ),
                            MainTextField(
                                controller: phoneController,
                                label: LocaleKeys.profileEdit_pro7.tr(),
                                keyboardType: TextInputType.name,
                                fillColor: Colors.transparent,
                                borderColor: Colors.black,
                                validator: (p0) => p0?.isValidPhone() ?? false
                                    ? null
                                    : LocaleKeys.profileEdit_pro8.tr(),
                                width: MediaQuery.of(context).size.width * 0.40,
                                contentPadding: const EdgeInsets.all(5),
                                prefixIcon: const Icon(Icons.phone)),
                            const SizedBox(
                              height: 30,
                            ),
                            MainTextField(
                                controller: passwordController,
                                fillColor: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                label: LocaleKeys.profileEdit_pro10.tr(),
                                validator: (p0) =>
                                    p0?.isValidPassword() ?? false
                                        ? null
                                        : 'Please Add A Valid Password',
                                keyboardType: TextInputType.emailAddress,
                                borderColor: Colors.black,
                                hint: '******',
                                contentPadding: const EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width * 0.40,
                                prefixIcon: const Icon(Icons.lock)),
                            const SizedBox(
                              height: 30,
                            ),
                            MainTextField(
                                controller: TextEditingController(),
                                fillColor: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                label: LocaleKeys.profileEdit_pre12.tr(),
                                borderColor: Colors.black,
                                hint: LocaleKeys.profileEdit_pro13.tr(),
                                contentPadding: const EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width * 0.40,
                                prefixIcon: const Icon(Icons.language)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<ProfileBloc>().add(UpdateUser(params: {
                            if (nameController.text.isNotEmpty)
                              'user_name': nameController.text,
                            if (emailController.text.isNotEmpty)
                              'email': emailController.text,
                            if (phoneController.text.isNotEmpty)
                              'phone': phoneController.text,
                            if (passwordController.text.isNotEmpty)
                              'password': passwordController.text
                          }));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(style: BorderStyle.solid),
                      elevation: 0,
                      fixedSize: const Size(100, 35)),
                  child: Text(
                    LocaleKeys.profileEdit_pro15.tr(),
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

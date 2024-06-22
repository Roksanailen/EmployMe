import 'package:emplooo/features/auth/data/model/auth_model.dart';
import 'package:emplooo/features/information/presentation/information_screen.dart';
import 'package:emplooo/features/profile/bloc/profile_bloc.dart';

import 'package:emplooo/features/profile/data/model/profile_model.dart';
import 'package:emplooo/features/profile/data/model/profile_model.dart';
import 'package:emplooo/features/profile/data/model/profile_model.dart';
import 'package:emplooo/features/profile/presentation/profile_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/resources/global_function.dart';

import '../../../core/widgets/list_tile.dart';
import '../bloc/profile_bloc.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(IndexUser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: 30,
        backgroundColor: Colors.white54,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Information()));
            },
            child: const Icon(
              Icons.info,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilEdit()));
            },
            child: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
        if (state.status == ProfileStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status == ProfileStatus.failed) {
          return const Center(
            child: Text('Try Agian'),
          );
        } else if (state.status == ProfileStatus.success) {
          GlobalFunctions().storeToken(state.token!);

          return Column(children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                  color: Colors.blue.shade200),
              child: Column(children: [
                LottieBuilder.asset(
                  'assets/images/profil2.json',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  MainListTile(
                      dense: true,
                      isThreeLine: true,
                      enabled: true,
                      leading: Icon(Icons.man_rounded),
                      title: "${'state.User.firstName!'}" ?? ""),
                  MainListTile(
                      dense: true,
                      isThreeLine: true,
                      enabled: true,
                      leading: Icon(Icons.account_circle),
                      title: "${'state.indexUser.lastName!'}" ?? ""),
                  MainListTile(
                      dense: true,
                      isThreeLine: true,
                      enabled: true,
                      leading: Icon(Icons.account_circle),
                      title: "${'state.User.userName!'}" ?? ""),
                  MainListTile(
                      dense: true,
                      isThreeLine: true,
                      enabled: true,
                      leading: Icon(Icons.email),
                      title: "${'state.User.email!'}" ?? ""),
                  MainListTile(
                    dense: true,
                    enabled: true,
                    leading: Icon(Icons.phone),
                    title: ("${state.user?.phone!}" ?? ""),
                    isThreeLine: true,
                  ),
                  // MainListTile(
                  //     dense: true,
                  //     isThreeLine: true,
                  //     enabled: true,
                  //     leading: Icon(Icons.lock),
                  //     title: ('******')),
                  MainListTile(
                      dense: true,
                      isThreeLine: true,
                      enabled: true,
                      leading: Icon(Icons.numbers),
                      title: "${'state.indexUser.idNumber!'}" ?? ""),
                ]))
          ]);
        } else
          return const Center(
            child: Text('Try Agian'),
          );
      }),
    );
  }
}

import 'package:emplooo/features/information/presentation/information_screen.dart';
import 'package:emplooo/features/profile/bloc/profile_bloc.dart';
import 'package:emplooo/features/profile/presentation/profile_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widgets/list_tile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
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
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state.indexStatus == ProfileStatus.success) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilEdit(
                                  user: state.user!,
                                )));
                  },
                  child: const Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
        if (state.indexStatus == ProfileStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.indexStatus == ProfileStatus.failed) {
          return Center(
            child: GestureDetector(
                onTap: () {
                  context.read<ProfileBloc>().add(IndexUser());
                },
                child: const Text('Try Agian')),
          );
        } else if (state.indexStatus == ProfileStatus.success) {
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
                      leading: const Icon(Icons.man_rounded),
                      title: '${state.user?.firstName}'),
                  MainListTile(
                      dense: true,
                      isThreeLine: true,
                      enabled: true,
                      leading: const Icon(Icons.account_circle),
                      title: '${state.user?.lastName}'),
                  MainListTile(
                      dense: true,
                      isThreeLine: true,
                      enabled: true,
                      leading: const Icon(Icons.account_circle),
                      title: '${state.user?.userName}'),
                  MainListTile(
                      dense: true,
                      isThreeLine: true,
                      enabled: true,
                      leading: const Icon(Icons.email),
                      title: '${state.user?.email}'),
                  MainListTile(
                    dense: true,
                    enabled: true,
                    leading: const Icon(Icons.phone),
                    title: ("${state.user?.phone!}" ?? ""),
                    isThreeLine: true,
                  ),
                  MainListTile(
                      dense: true,
                      isThreeLine: true,
                      enabled: true,
                      leading: const Icon(Icons.numbers),
                      title: '${state.user?.idNumber}'),
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

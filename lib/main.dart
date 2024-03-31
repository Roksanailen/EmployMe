import 'package:emplooo/features/auth/bloc/auth_bloc.dart';
import 'package:emplooo/features/splashscreen/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
//
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: Splash_Screen()),
    );
  }
}

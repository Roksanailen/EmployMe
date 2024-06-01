import 'package:bot_toast/bot_toast.dart';
import 'package:emplooo/features/advice/Presentation/informatic/informatic.dart';
import 'package:emplooo/features/auth/bloc/auth_bloc.dart';
import 'package:emplooo/features/cv/presentation/cvscreen.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/bloc/company_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/section_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/type_bloc.dart';
import 'package:emplooo/features/mainscreen/home_screen.dart';
import 'package:emplooo/features/splashscreen/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/advice/Presentation/advice.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

// import 'features/mainscreen/drawerscreen.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<SectionBloc>(
          create: (context) => SectionBloc(),
        ),
        BlocProvider<TypesBloc>(
          create: (context)=> TypesBloc(),
          ),
        BlocProvider<CompanyBloc>(
          create: (context)=> CompanyBloc(),
          ),
      ],
      child: MaterialApp(
          builder: BotToastInit(),
          debugShowCheckedModeBanner: false,
          home:  HomeScreen()),
    );
  }
}

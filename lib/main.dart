import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:emplooo/features/auth/bloc/auth_bloc.dart';
import 'package:emplooo/features/cv/presentation/bloc/cv_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/bloc/company_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/bloc/job_details_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/bloc/sectiontype_bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/bloc/section_bloc.dart';

import 'package:emplooo/features/mainscreen/home_screen.dart';
import 'package:emplooo/features/profile/bloc/profile_bloc.dart';
import 'package:emplooo/features/search/presentation/bloc/search_bloc.dart';
import 'package:emplooo/features/splashscreen/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

// import 'features/mainscreen/drawerscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    path: 'assets/translations',supportedLocales: const [Locale('ar'), Locale('en')],
    child: const MainApp()));
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
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(),
        ),
       
        BlocProvider<CompanyBloc>(
          create: (context) => CompanyBloc(),
        ),
        BlocProvider<SectiontypeBloc>(
          create: (context) => SectiontypeBloc(),
        ),
        BlocProvider<JobDetailsBloc>(
          create: (context) => JobDetailsBloc(),
        ),
        BlocProvider<ProfileBloc>(create: (context) => ProfileBloc()),
        BlocProvider<CvBloc>(create: (context) => CvBloc())
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

          builder: BotToastInit(),
          debugShowCheckedModeBanner: false,
          home: const HomeScreen()),
    );
  }
}

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';

// import '../resources/global_function.dart';

// part 'theme_event.dart';
// part 'theme_state.dart';

// class ThemeServiceBloc extends Bloc<ThemeServiceEvent, ThemeServiceState> {
//   ThemeServiceBloc() : super(ThemeServiceState()) {
//     on<ChangeThemeEvent>((event, emit) async {
//       final bool isDarkTheme = await GlobalFunctions().getTheme();
//       emit(state.copyWith(isDarkTheme: !isDarkTheme));
//       await GlobalFunctions().setTheme(isDarkMode: !isDarkTheme);
//     });
//     on<InitThemeEvent>((event, emit) async {
//       final bool isDarkTheme = await GlobalFunctions().getTheme();
//       log(isDarkTheme.toString());
//       emit(state.copyWith(isDarkTheme: isDarkTheme));
//     });
//   }
// }

import 'package:bloc/bloc.dart';
import 'package:emplooo/features/auth/data/repository/auth_repo.dart';
import 'package:emplooo/features/auth/data/requests/auth_request.dart';
import 'package:flutter/src/widgets/editable_text.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<RegisterEvent>(
      (event, emit) async {
        emit(state.copyWith(status: AuthStatus.loading));
        final result = await AuthRepo(dataSource: AuthDataSource()).register({
          'userName': event.username,
          'email': event.email,
          'password': event.password,
          'fullName': 'Flutter Dash',
          'phone': event.phone,
        });
        result.fold((l) => emit(state.copyWith(status: AuthStatus.failed)),
            (r) {
          emit(state.copyWith(
              status: AuthStatus.success, token: r.data?.accessToken));
        });
      },
    );
    on<LoginEvent>(
      (event, emit) async {
        emit(state.copyWith(status: AuthStatus.loading));
        final result = await AuthRepo(dataSource: AuthDataSource()).login({
          'userName': event.userName,
          'password': event.password,
        });
        result.fold((l) => emit(state.copyWith(status: AuthStatus.failed)),
            (r) {
          emit(state.copyWith(
              status: AuthStatus.success, token: r.data?.accessToken));
        });
      },
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:emplooo/features/auth/data/repository/auth_repo.dart';
import 'package:emplooo/features/auth/data/requests/auth_request.dart';

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
          'fullName': 'Omar Kaialy',
          'phone': event.phone,
        });
        result.fold((l) => emit(state.copyWith(status: AuthStatus.failed)),
            (r) {
          emit(state.copyWith(status: AuthStatus.success));
        });
      },
    );
  }
}

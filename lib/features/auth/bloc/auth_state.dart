// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

enum AuthStatus { loading, success, failed, init }

class AuthState {
  final AuthStatus status;
  final String? token;
  AuthState({
    this.status = AuthStatus.init,
    this.token,
  });

  AuthState copyWith({
    AuthStatus? status,
    String? token,
  }) {
    return AuthState(
      status: status ?? this.status,
      token: token ?? this.token,
    );
  }
}

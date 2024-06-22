part of 'profile_bloc.dart';

abstract class ProfileEvent {
  const ProfileEvent();
}

class IndexUser extends ProfileEvent {}

class UpdateUser extends ProfileEvent {
  final Map<String, dynamic> params;
  UpdateUser({
    required this.params,
  });
}

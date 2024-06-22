part of 'profile_bloc.dart';

enum ProfileStatus { loading, success, failed, initial }

class ProfileState {
  final ProfileStatus indexStatus;
  final ProfileStatus updateStatus;
  final User? user;
  ProfileState(
      {this.indexStatus = ProfileStatus.initial,
      this.updateStatus = ProfileStatus.initial,
      this.user});

  ProfileState copyWith({
    ProfileStatus? indexStatus,
    ProfileStatus? updateStatus,
    User? user,
  }) {
    return ProfileState(
        indexStatus: indexStatus ?? this.indexStatus,
        updateStatus: updateStatus ?? this.updateStatus,
        user: user ?? this.user);
  }
}

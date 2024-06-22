import 'package:bloc/bloc.dart';
import 'package:emplooo/features/profile/data/repositry/profile_repo.dart';

import '../data/model/profile_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState()) {
    on<IndexUser>((event, emit) async {
      emit(state.copyWith(indexStatus: ProfileStatus.loading));
      final result = await ProfileRepo().indexUser({});
      result.fold(
          (left) => emit(state.copyWith(indexStatus: ProfileStatus.failed)),
          (r) => emit(state.copyWith(
              indexStatus: ProfileStatus.success, user: r.data)));
      on<UpdateUser>((event, emit) async {
        emit(state.copyWith(updateStatus: ProfileStatus.loading));
        final result1 = await ProfileRepo().updateUser(event.params);
        result1.fold(
            (left) => emit(state.copyWith(updateStatus: ProfileStatus.failed)),
            (r) => emit(state.copyWith(
                updateStatus: ProfileStatus.success, user: r.data!)));
      });
    });
  }
}

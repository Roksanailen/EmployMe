import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:emplooo/features/profile/data/repositry/profile_repo.dart';
import 'package:emplooo/features/profile/data/request/profile_request.dart';

import '../data/model/profile_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState()) {
    on<IndexUser>((event, emit) async {
      emit(state.copyWith(indexStatus: Status.loading));
      final result =
          await ProfileRepo(dataSource: ProfileDataSource()).indexUser({});
      result.fold((left) => emit(state.copyWith(indexStatus: Status.failed)),
          (r) => emit(state.copyWith(indexStatus: Status.success)));
      on<UpdateUser>((event, emit) async {
        emit(state.copyWith(updateStatus: Status.loading));
        final result1 = await ProfileRepo(dataSource: ProfileDataSource())
            .updateUser({}, 4);
        result1.fold(
            (left) => emit(state.copyWith(updateStatus: Status.failed)),
            (r) => emit(state.copyWith(
                updateStatus: Status.success, User: r.Profile!)));
      });
    });
  }
}

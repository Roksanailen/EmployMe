// import 'package:bloc/bloc.dart';
// import 'package:emplooo/features/profile/data/repositry/profile_repo.dart';


// import '../data/model/profile_model.dart';

// part 'profile_event.dart';
// part 'profile_state.dart';

// class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
//   ProfileBloc() : super(ProfileInitial()) {
//     on<GetUsersEvent>((event, emit) async {
//       final result = await ProfileRepo().getUsers();
//          result.fold((l) => emit(ProfileFailure()),
//           (r) => emit(ProfileSuccess(users: r.data!)));
//     });
//   }
// }

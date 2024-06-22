part of 'profile_bloc.dart';

 enum ProfileStatus{ loading, success, failed, initial }

class ProfileState {

  final Status indexStatus;
  final Status updateStatus;
 final Profile? User;
  ProfileState( {
this.indexStatus=Status.initial,
this.updateStatus=Status.initial,


 this.User
  });

  ProfileState copyWith({
  Status? indexStatus,
  Status?updateStatus
  User?Profile,
  
  
  }) {
    return ProfileState(
indexStatus: indexStatus??this.indexStatus,
updateStatus: updateStatus??this.updateStatus,
User: User??this.User
    );
  }


}

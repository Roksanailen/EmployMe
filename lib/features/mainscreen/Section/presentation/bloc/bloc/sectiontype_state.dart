part of 'sectiontype_bloc.dart';

class SectionTypeState {
  final List<JobModel> datum;
  final SectionTypeRespnoseModel? sectiontype;
  final Status sectionTyeStatus;
  final String? token;
  SectionTypeState({
    this.datum = const [],
    this.sectiontype,
    this.sectionTyeStatus = Status.initial,
    this.token,
  });

  SectionTypeState copyWith({
    String? token,
    List<JobModel>? datum,
    SectionTypeRespnoseModel? sectiontype,
    Status? sectionTyeStatus,
  }) {
    return SectionTypeState(
      token: token ?? this.token,
      datum: datum ?? this.datum,
      sectiontype: sectiontype ?? this.sectiontype,
      sectionTyeStatus: sectionTyeStatus ?? this.sectionTyeStatus,
    );
  }
}

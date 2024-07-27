part of 'sectiontype_bloc.dart';

class SectionTypeState {
  final List<SectionTypeModel> datum;
  final SectionTypeResponseModel? sectiontype;
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
    List<SectionTypeModel>? datum,
    SectionTypeResponseModel? sectiontype,
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

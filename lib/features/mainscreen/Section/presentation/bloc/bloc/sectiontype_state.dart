part of 'sectiontype_bloc.dart';


class SectionTypeState {
  final List<Datum> datum;
  final SectionTypeResponseModel? sectiontype;
  final Status SectionTyeStatus;
  final String? token;
  SectionTypeState({
    this.datum = const [],
    this.sectiontype,
    this.SectionTyeStatus=Status.initial,
    this.token,
  });

SectionTypeState copyWith({
    String? token,
    List<Datum>? datum,
    SectionTypeResponseModel? sectiontype,
    required Status SectionTyeStatus, 
    
  }) {
    return SectionTypeState(
    
      token: token ?? this.token,
    );
  }
}


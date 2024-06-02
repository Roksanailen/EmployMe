part of 'sectiontype_bloc.dart';

abstract class SectiontypeEvent{
  SectiontypeEvent();
}
class GetSectionTypeEvent extends SectiontypeEvent{
  final String section_id;
  GetSectionTypeEvent({
    required this.section_id,
  });
}

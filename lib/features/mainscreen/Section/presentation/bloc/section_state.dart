part of'section_bloc.dart';
abstract class SectionsState{
  const SectionsState();
}
class SectionsInitial extends SectionsState{}
class SectionsLoading extends SectionsState{}
class SectionsFailure extends SectionsState{}
class SecionsSuccess extends SectionsState{
final List<SectionModel> sections;
SecionsSuccess(
  {this.sections=const[],}
);

}
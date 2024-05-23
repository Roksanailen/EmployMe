part of'type_bloc.dart';
abstract class TypesEvent{
   TypesEvent();
}
class GetTypessEvent extends TypesEvent{}
class GetIdSection extends TypesEvent{
  final int sectionid;
  final List<Business_Classification> onetype;
  GetIdSection({required this.sectionid,required this.onetype});

}
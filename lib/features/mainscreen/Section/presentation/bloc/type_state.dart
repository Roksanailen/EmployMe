part of'type_bloc.dart';

abstract class TypesState{
  const TypesState();
}
class TypssInitial extends TypesState{}
class TypesLoading extends TypesState{}
class TypesFailure extends TypesState{}
class TypesSuccess extends TypesState{
final List <TypeModel> types;
TypesSuccess(
  {this.types=const[],}
);

}
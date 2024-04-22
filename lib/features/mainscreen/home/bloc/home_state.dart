part of'home_bloc.dart';
abstract class HomeState{
  const HomeState();
}
class HomeInitial extends HomeState{}
class HomeLoading extends HomeState{}
class HomeFailure extends HomeState{}
class HomeSuccess extends HomeState{
//final List<HomeModel> home;
//HomeSuccess(
  //required this.home = const[],
//);
}
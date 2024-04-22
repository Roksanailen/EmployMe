import 'package:bloc/bloc.dart';
import 'package:emplooo/features/mainscreen/home/data/datasources/data_source.dart';
part 'home_event.dart';
part 'home_state.dart';
class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc():super(HomeInitial()){
    on<GetHomeEvent>((event,emit) async{
    emit(HomeLoading());
    final result= await HomeDataSource().getAllHome().catchError(onError);
    //....
    emit(HomeSuccess());
    });
  }
}
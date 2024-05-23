import 'package:emplooo/features/mainscreen/Section/data/model/type_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/data/repository/type_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:emplooo/features/mainscreen/Section/presentation/businessclassification.dart';
part 'type_event.dart';
part 'type_state.dart';

class TypesBloc extends Bloc<TypesEvent,TypesState> {
  TypesBloc() : super(TypssInitial()) {
    on<GetTypessEvent>((event, emit) async {
      emit(TypesLoading());
      
      final result =await TypeRepo().getAllTyps();
      result.fold((l) => emit(TypesFailure()),
       (r) => emit(TypesSuccess(types:r.data! )));
    });
  }
}
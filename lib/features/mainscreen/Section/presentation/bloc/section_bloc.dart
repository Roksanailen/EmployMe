import 'package:bloc/bloc.dart';
import 'package:emplooo/features/mainscreen/Section/data/dataSources/data_source.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_response_model.dart';



part 'section_event.dart';
part 'section_state.dart';
class SectionBloc extends Bloc<SectionsEvent, SectionsState>{
  SectionBloc():super(SectionsInitial()){
    on<GetSectionsEvent>((event,emit) async{
    emit(SectionsLoading());
    final result= await SectionDataSource().getAllSections().catchError((error,StackTrace){
      emit(SectionsFailure());
      return null;});
    result.data;
    emit(SecionsSuccess(sections: result.data!));
    });
  }
}
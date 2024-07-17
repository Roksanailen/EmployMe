import 'package:bloc/bloc.dart';
import 'package:emplooo/core/unified_api/status.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_type_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/data/repository/section_type_repo.dart';
part 'sectiontype_event.dart';
part 'sectiontype_state.dart';
class SectiontypeBloc extends Bloc<SectiontypeEvent, SectionTypeState> {
  SectiontypeBloc() : super(SectionTypeState()) {
    on<GetSectionTypeEvent>((event, emit) async{
      emit(state.copyWith(SectionTyeStatus:Status.loading));
      final result = await SectionTypeRepo().getSectionType(event.section_id);
      result.fold(
        (l) => emit(state.copyWith(SectionTyeStatus: Status.failed)),
       (r) => emit(state.copyWith(SectionTyeStatus: Status.success,sectiontype: r),),);
      // TODO: implement event handler
    });
  }
}

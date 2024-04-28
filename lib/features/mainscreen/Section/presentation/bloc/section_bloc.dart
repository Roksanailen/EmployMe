import 'package:bloc/bloc.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/data/repository/section_repo.dart';

part 'section_event.dart';
part 'section_state.dart';

class SectionBloc extends Bloc<SectionsEvent, SectionsState> {
  SectionBloc() : super(SectionsInitial()) {
    on<GetSectionsEvent>((event, emit) async {
      emit(SectionsLoading());
      final result = await SectionRepo().getAllSections();
      result.fold((l) => emit(SectionsFailure()),
          (r) => emit(SecionsSuccess(sections: r.data!)));
    });
  }
}

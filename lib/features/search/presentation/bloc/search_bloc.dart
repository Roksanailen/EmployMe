import 'package:bloc/bloc.dart';
import 'package:emplooo/core/toaster.dart';
import 'package:emplooo/features/search/data/models/get_jobs_ai_model.dart';
import 'package:emplooo/features/search/data/repo/search_repo.dart';
import 'package:meta/meta.dart';

import '../../../../core/enums/request_status.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<SearchAiEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      final result = await SearchRepo().getJobs(event.keyWord);
      result.fold((l) {
        Toaster.showToast(l.message);
        emit(state.copyWith(status: RequestStatus.fail));
      }, (r) {
        emit(
          state.copyWith(status: RequestStatus.success, jobs: r.data),
        );
      });
    });
  }
}

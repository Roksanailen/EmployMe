

import 'package:bloc/bloc.dart';
import 'package:emplooo/features/mainscreen/Section/data/repository/job_details_repo.dart';

import '../../../../../../core/unified_api/status.dart';
import '../../../data/model/job_details_respons_model.dart';

part 'job_details_event.dart';
part 'job_details_state.dart';

class JobDetailsBloc extends Bloc<JobDetailsEvent, JobDetailsState> {
  JobDetailsBloc() : super(JobDetailsState()) {
    on<GetJobIdEvent>((event, emit) async{
      emit(state.copyWith(jobdetailsStatus: Status.loading));
      final result =await JobDetailsRepo().getjobId(event.Job_Id);
      result.fold(
       (l) => emit (state.copyWith(jobdetailsStatus: Status.failed)),
       (r) => emit(state.copyWith(jobdetailsStatus: Status.success,jobdetails: r),),);
      // TODO: implement event handler
    });
  }
}

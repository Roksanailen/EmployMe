import 'package:bloc/bloc.dart';
import 'package:emplooo/core/unified_api/status.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/company_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_type_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/data/repository/company_repo.dart';

part 'company_event.dart';
part 'company_state.dart';

class CompanyBloc extends Bloc<CompaniesEvent, CompaniesState> {
  CompanyBloc() : super(const CompaniesState()) {
    on<GetCompaniesEvent>((event, emit) async {
      emit(state.copyWith(status: Status.loading));
      final result = await CompanyRepo().getAllCompanies();
      result.fold((l) => state.copyWith(status: Status.failed), (r) {
        if (r.data != null) {
          emit(state.copyWith(status: Status.success, companies: r.data));
        } else {
          emit(state.copyWith(status: Status.failed));
        }
      });
    });
    on<GetCompanyJbsEvent>((event, emit) async {
      emit(state.copyWith(getJobsStatus: Status.loading));
      final result = await CompanyRepo().indexJobs(event.id);
      result.fold((l) {
        emit(state.copyWith(getJobsStatus: Status.failed));
      }, (r) {
        emit(state.copyWith(getJobsStatus: Status.success, jobs: r.data));
      });
    });
  }
}

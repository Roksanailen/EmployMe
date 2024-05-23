import 'package:bloc/bloc.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/company_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/data/repository/company_repo.dart';
import 'package:equatable/equatable.dart';

part 'company_event.dart';
part 'company_state.dart';

class CompanyBloc extends Bloc<GetCompaniesEvent, CompaniesState> {
  CompanyBloc() : super(CompaniesInitial()) {
    on<GetCompaniesEvent>((event, emit)async {
       emit(CompaniesLoading());
      final result = await CompanyRepo().GetAllCompanies();
      result.fold((l) => emit(CompaniesFailure()),
          (r) => emit(CompaniesSuccess(companies: r.data!)));
      // TODO: implement event handler
    });
  }
}

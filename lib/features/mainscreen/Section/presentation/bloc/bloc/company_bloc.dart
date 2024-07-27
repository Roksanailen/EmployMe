import 'package:bloc/bloc.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/company_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/data/repository/company_repo.dart';


part 'company_event.dart';
part 'company_state.dart';

class CompanyBloc extends Bloc<CompaniesEvent, CompaniesState> {
  CompanyBloc() : super(CompaniesInitial()) {
    on<GetCompaniesEvent>((event, emit)async {
       emit(CompaniesLoading());
      final result = await CompanyRepo().GetAllCompanies();
      result.fold((l) => emit(CompaniesFailure()),
          (r) {
            if(r.data !=null){
              emit(CompaniesSuccess(companies: r.data!));
            }else{
              emit(CompaniesFailure());
            }
          });
      // TODO: implement event handler
    });
  }
}

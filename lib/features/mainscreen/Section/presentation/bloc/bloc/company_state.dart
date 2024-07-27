part of 'company_bloc.dart';
abstract class CompaniesState{
  const CompaniesState();
}
class CompaniesInitial extends CompaniesState{}
class CompaniesLoading extends CompaniesState{}
class CompaniesFailure extends CompaniesState{}
class CompaniesSuccess extends CompaniesState{
final List<Datum> companies;
CompaniesSuccess(
  {this.companies=const[],}
);

}




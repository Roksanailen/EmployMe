part of 'company_bloc.dart';

abstract class CompaniesEvent {
  CompaniesEvent();
}

class GetCompaniesEvent extends CompaniesEvent {}

class GetCompanyJbsEvent extends CompaniesEvent {
  final int id;
  GetCompanyJbsEvent({
    required this.id,
  });
}

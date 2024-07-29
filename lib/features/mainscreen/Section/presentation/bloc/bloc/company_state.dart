part of 'company_bloc.dart';

class CompaniesState {
  final Status status;
  final Status getJobsStatus;

  final List<CompanyModel> companies;
  final List<JobModel> jobs;
  const CompaniesState({
    this.status = Status.initial,
    this.getJobsStatus = Status.initial,
    this.companies = const [],
    this.jobs = const [],
  });

  CompaniesState copyWith({
    Status? status,
    Status? getJobsStatus,
    List<CompanyModel>? companies,
    List<JobModel>? jobs,
  }) {
    return CompaniesState(
      status: status ?? this.status,
      getJobsStatus: getJobsStatus ?? this.getJobsStatus,
      companies: companies ?? this.companies,
      jobs: jobs ?? this.jobs,
    );
  }
}

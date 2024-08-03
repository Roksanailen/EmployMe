part of 'job_details_bloc.dart';

 class JobDetailsState {
  final List data;
  final JobDetailsRespnoseModel? jobdetails;
  final Status jobdetailsStatus;
  final String? token;
  JobDetailsState({
    this.data = const [],
    this.jobdetails,
    this.jobdetailsStatus = Status .initial,
    this.token,
  });
  JobDetailsState copyWith({
    String? token,
    List? data,
    JobDetailsRespnoseModel? jobdetails,
    Status? jobdetailsStatus,
  }){
    return JobDetailsState(
      token: token?? this.token,
      data: data?? this.data,
      jobdetails: jobdetails?? this.jobdetails,
      jobdetailsStatus:jobdetailsStatus?? this.jobdetailsStatus,
    );
  }

}



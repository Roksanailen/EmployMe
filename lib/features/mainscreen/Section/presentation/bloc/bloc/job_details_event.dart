part of 'job_details_bloc.dart';

abstract class JobDetailsEvent {
JobDetailsEvent();
}
class GetJobIdEvent extends JobDetailsEvent{
  final String Job_Id;
  GetJobIdEvent({
    required this.Job_Id,
  });
}
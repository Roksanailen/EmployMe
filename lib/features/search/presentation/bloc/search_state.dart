part of 'search_bloc.dart';

class SearchState {
  final RequestStatus status;
  final List<SearchJobAi> jobs;
  SearchState({
    this.status = RequestStatus.init,
    this.jobs = const [],
  });

  SearchState copyWith({
    RequestStatus? status,
    List<SearchJobAi>? jobs,
  }) {
    return SearchState(
      status: status ?? this.status,
      jobs: jobs ?? this.jobs,
    );
  }
}

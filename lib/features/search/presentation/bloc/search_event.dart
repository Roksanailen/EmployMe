part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class SearchAiEvent extends SearchEvent {
  final String keyWord;
  SearchAiEvent({
    required this.keyWord,
  });
}

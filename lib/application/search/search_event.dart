part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialized() = Initialized;
  const factory SearchEvent.searchResult({
    required String searchQuery,
  }) = SearchResult;
}

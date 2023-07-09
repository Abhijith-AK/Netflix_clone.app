import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/search/search_service.dart';

import '../../domain/downloads/models/downloads.dart';
import '../../domain/search/models/search_resp/search_resp.dart';
part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloads _downloadsService;
  final SearchSearvice _searchSearvice;
  SearchBloc(this._downloadsService, this._searchSearvice)
      : super(SearchState.initial()) {
    on<Initialized>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
          searchResultList: [],
          idleList: state.idleList,
          isLoading: false,
          isError: false,
        ));
        return;
      }
      emit(
        SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
//get trending

      final _result = await _downloadsService.getDownloadsImage();
      _result.fold((MainFailure f) {
        emit(
          SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          ),
        );
      }, (List<Downloads> list) {
        emit(
          SearchState(
            searchResultList: [],
            idleList: list,
            isLoading: false,
            isError: false,
          ),
        );
      });
//show to ui
    });

    on<SearchResult>((event, emit) async {
      log('Searching for ${event.searchQuery}');
      // TODO: implement event handler
      emit(
        SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result =
          await _searchSearvice.searchResult(searchQuery: event.searchQuery);
      final _state = _result.fold(
        (MainFailure f) {
          return SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchResp r) {
          return SearchState(
            searchResultList: r.results,
            idleList: [],
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(_state);
    });
  }
}

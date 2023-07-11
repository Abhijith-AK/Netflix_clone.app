import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/hot_and_new/discover_movie_service.dart';

import '../../domain/hot_and_new/model/discover_movie.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final HotAndNewService _hotAndNewService;
  HotandnewBloc(this._hotAndNewService) : super(HotandnewState.initial()) {
    on<LoadDataInComingSoon>((event, emit) async {
      if (state.comingSoonList.isNotEmpty) {
        emit(HotandnewState(
          comingSoonList: state.comingSoonList,
          everyOnesWatchingList: [],
          isLoading: false,
          hasError: false,
        ));
        return;
      }

      //loading
      emit(const HotandnewState(
        comingSoonList: [],
        everyOnesWatchingList: [],
        isLoading: true,
        hasError: false,
      ));
      //get data
      final _movieData = await _hotAndNewService.getDiscoverMovieData();
      //data to state
      final newState = _movieData.fold((MainFailure f) {
        return HotandnewState(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: false,
          hasError: true,
        );
      }, (DiscoverMovie resp) {
        return HotandnewState(
          comingSoonList: resp.results,
          everyOnesWatchingList: state.everyOnesWatchingList,
          isLoading: false,
          hasError: false,
        );
      });
      emit(newState);
    });
    on<LoadDataInEveryonesWatching>((event, emit) async {
      final _tvData = await _hotAndNewService.getDiscoverTVData();
      final secondState = _tvData.fold((MainFailure f) {
        return HotandnewState(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: false,
          hasError: true,
        );
      }, (DiscoverMovie r) {
        return HotandnewState(
          comingSoonList: state.comingSoonList,
          everyOnesWatchingList: r.results,
          isLoading: false,
          hasError: false,
        );
      });
      emit(secondState);
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';

import '../../domain/hot_and_new/discover_movie_service.dart';
import '../../domain/hot_and_new/model/discover_movie.dart';
part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final HotAndNewService _homepage;
  HomePageBloc(this._homepage) : super(HomePageState.initial()) {
    on<GetHomeScreenData>((event, emit) async {
      if (state.pastYearMovieList.isNotEmpty) {
        emit(HomePageState(
          stateId: DateTime.now().microsecondsSinceEpoch.toString(),
          topTvShowsList: state.topTvShowsList,
          pastYearMovieList: state.pastYearMovieList,
          trendingNowList: state.trendingNowList,
          tenseDramasList: state.tenseDramasList,
          SouthIndianCinemaList: state.SouthIndianCinemaList,
          isLoading: false,
          hasError: false,
        ));
        return;
      }
//send loading to ui
      emit(state.copyWith(isLoading: true, hasError: false));

//get data
      final _movieResult = await _homepage.getDiscoverMovieData();
      final _tvResult = await _homepage.getDiscoverTVData();

//transform data

      final _state1 = _movieResult.fold(
        (MainFailure f) {
          return HomePageState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            trendingNowList: [],
            tenseDramasList: [],
            SouthIndianCinemaList: [],
            topTvShowsList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (DiscoverMovie r) {
          final pastYear = r.results;
          final trnding = r.results;
          final tenseDrama = r.results;
          final southIndian = r.results;

          // pastYear.shuffle();
          // trnding.shuffle();
          // tenseDrama.shuffle();

          southIndian.shuffle();
          return HomePageState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            pastYearMovieList: pastYear,
            trendingNowList: trnding,
            tenseDramasList: tenseDrama,
            SouthIndianCinemaList: southIndian,
            topTvShowsList: state.topTvShowsList,
            isLoading: false,
            hasError: false,
          );
        },
      );
      emit(_state1);

      final _state2 = _tvResult.fold(
        (MainFailure f) {
          return HomePageState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            trendingNowList: [],
            tenseDramasList: [],
            SouthIndianCinemaList: [],
            topTvShowsList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (DiscoverMovie r) {
          final top10List = r.results;

          return HomePageState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            topTvShowsList: top10List,
            pastYearMovieList: state.pastYearMovieList,
            trendingNowList: state.trendingNowList,
            tenseDramasList: state.tenseDramasList,
            SouthIndianCinemaList: state.SouthIndianCinemaList,
            isLoading: false,
            hasError: false,
          );
        },
      );

//send to ui
      emit(_state2);
    });
  }
}

part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required String stateId,
    required List<HotAndNewM> pastYearMovieList,
    required List<HotAndNewM> trendingNowList,
required    List<HotAndNewM> topTvShowsList,
    required List<HotAndNewM> tenseDramasList,
    required List<HotAndNewM> SouthIndianCinemaList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomePageState.initial() => const HomePageState(
       stateId: '0',
        pastYearMovieList: [],
        trendingNowList: [],
        tenseDramasList: [],
        SouthIndianCinemaList: [],
        topTvShowsList: [],
        isLoading: false,
        hasError: false,
      );
}

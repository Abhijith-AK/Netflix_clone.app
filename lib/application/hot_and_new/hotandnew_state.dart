part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<HotAndNewM> comingSoonList,
    required List<HotAndNewM> everyOnesWatchingList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HotandnewState.initial() => const HotandnewState(
        comingSoonList: [],
        everyOnesWatchingList: [],
        isLoading: false,
        hasError: false,
      );
}

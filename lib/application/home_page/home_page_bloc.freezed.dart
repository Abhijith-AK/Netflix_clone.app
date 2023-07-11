// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res, HomePageEvent>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res, $Val extends HomePageEvent>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeScreenDataCopyWith<$Res> {
  factory _$$GetHomeScreenDataCopyWith(
          _$GetHomeScreenData value, $Res Function(_$GetHomeScreenData) then) =
      __$$GetHomeScreenDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeScreenDataCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$GetHomeScreenData>
    implements _$$GetHomeScreenDataCopyWith<$Res> {
  __$$GetHomeScreenDataCopyWithImpl(
      _$GetHomeScreenData _value, $Res Function(_$GetHomeScreenData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeScreenData implements GetHomeScreenData {
  const _$GetHomeScreenData();

  @override
  String toString() {
    return 'HomePageEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeScreenData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class GetHomeScreenData implements HomePageEvent {
  const factory GetHomeScreenData() = _$GetHomeScreenData;
}

/// @nodoc
mixin _$HomePageState {
  String get stateId => throw _privateConstructorUsedError;
  List<HotAndNewM> get pastYearMovieList => throw _privateConstructorUsedError;
  List<HotAndNewM> get trendingNowList => throw _privateConstructorUsedError;
  List<HotAndNewM> get topTvShowsList => throw _privateConstructorUsedError;
  List<HotAndNewM> get tenseDramasList => throw _privateConstructorUsedError;
  List<HotAndNewM> get SouthIndianCinemaList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {String stateId,
      List<HotAndNewM> pastYearMovieList,
      List<HotAndNewM> trendingNowList,
      List<HotAndNewM> topTvShowsList,
      List<HotAndNewM> tenseDramasList,
      List<HotAndNewM> SouthIndianCinemaList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? pastYearMovieList = null,
    Object? trendingNowList = null,
    Object? topTvShowsList = null,
    Object? tenseDramasList = null,
    Object? SouthIndianCinemaList = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: null == pastYearMovieList
          ? _value.pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      trendingNowList: null == trendingNowList
          ? _value.trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      topTvShowsList: null == topTvShowsList
          ? _value.topTvShowsList
          : topTvShowsList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      tenseDramasList: null == tenseDramasList
          ? _value.tenseDramasList
          : tenseDramasList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      SouthIndianCinemaList: null == SouthIndianCinemaList
          ? _value.SouthIndianCinemaList
          : SouthIndianCinemaList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      List<HotAndNewM> pastYearMovieList,
      List<HotAndNewM> trendingNowList,
      List<HotAndNewM> topTvShowsList,
      List<HotAndNewM> tenseDramasList,
      List<HotAndNewM> SouthIndianCinemaList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? pastYearMovieList = null,
    Object? trendingNowList = null,
    Object? topTvShowsList = null,
    Object? tenseDramasList = null,
    Object? SouthIndianCinemaList = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$_Initial(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: null == pastYearMovieList
          ? _value._pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      trendingNowList: null == trendingNowList
          ? _value._trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      topTvShowsList: null == topTvShowsList
          ? _value._topTvShowsList
          : topTvShowsList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      tenseDramasList: null == tenseDramasList
          ? _value._tenseDramasList
          : tenseDramasList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      SouthIndianCinemaList: null == SouthIndianCinemaList
          ? _value._SouthIndianCinemaList
          : SouthIndianCinemaList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewM>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.stateId,
      required final List<HotAndNewM> pastYearMovieList,
      required final List<HotAndNewM> trendingNowList,
      required final List<HotAndNewM> topTvShowsList,
      required final List<HotAndNewM> tenseDramasList,
      required final List<HotAndNewM> SouthIndianCinemaList,
      required this.isLoading,
      required this.hasError})
      : _pastYearMovieList = pastYearMovieList,
        _trendingNowList = trendingNowList,
        _topTvShowsList = topTvShowsList,
        _tenseDramasList = tenseDramasList,
        _SouthIndianCinemaList = SouthIndianCinemaList;

  @override
  final String stateId;
  final List<HotAndNewM> _pastYearMovieList;
  @override
  List<HotAndNewM> get pastYearMovieList {
    if (_pastYearMovieList is EqualUnmodifiableListView)
      return _pastYearMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastYearMovieList);
  }

  final List<HotAndNewM> _trendingNowList;
  @override
  List<HotAndNewM> get trendingNowList {
    if (_trendingNowList is EqualUnmodifiableListView) return _trendingNowList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNowList);
  }

  final List<HotAndNewM> _topTvShowsList;
  @override
  List<HotAndNewM> get topTvShowsList {
    if (_topTvShowsList is EqualUnmodifiableListView) return _topTvShowsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTvShowsList);
  }

  final List<HotAndNewM> _tenseDramasList;
  @override
  List<HotAndNewM> get tenseDramasList {
    if (_tenseDramasList is EqualUnmodifiableListView) return _tenseDramasList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramasList);
  }

  final List<HotAndNewM> _SouthIndianCinemaList;
  @override
  List<HotAndNewM> get SouthIndianCinemaList {
    if (_SouthIndianCinemaList is EqualUnmodifiableListView)
      return _SouthIndianCinemaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_SouthIndianCinemaList);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomePageState(stateId: $stateId, pastYearMovieList: $pastYearMovieList, trendingNowList: $trendingNowList, topTvShowsList: $topTvShowsList, tenseDramasList: $tenseDramasList, SouthIndianCinemaList: $SouthIndianCinemaList, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            const DeepCollectionEquality()
                .equals(other._pastYearMovieList, _pastYearMovieList) &&
            const DeepCollectionEquality()
                .equals(other._trendingNowList, _trendingNowList) &&
            const DeepCollectionEquality()
                .equals(other._topTvShowsList, _topTvShowsList) &&
            const DeepCollectionEquality()
                .equals(other._tenseDramasList, _tenseDramasList) &&
            const DeepCollectionEquality()
                .equals(other._SouthIndianCinemaList, _SouthIndianCinemaList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateId,
      const DeepCollectionEquality().hash(_pastYearMovieList),
      const DeepCollectionEquality().hash(_trendingNowList),
      const DeepCollectionEquality().hash(_topTvShowsList),
      const DeepCollectionEquality().hash(_tenseDramasList),
      const DeepCollectionEquality().hash(_SouthIndianCinemaList),
      isLoading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomePageState {
  const factory _Initial(
      {required final String stateId,
      required final List<HotAndNewM> pastYearMovieList,
      required final List<HotAndNewM> trendingNowList,
      required final List<HotAndNewM> topTvShowsList,
      required final List<HotAndNewM> tenseDramasList,
      required final List<HotAndNewM> SouthIndianCinemaList,
      required final bool isLoading,
      required final bool hasError}) = _$_Initial;

  @override
  String get stateId;
  @override
  List<HotAndNewM> get pastYearMovieList;
  @override
  List<HotAndNewM> get trendingNowList;
  @override
  List<HotAndNewM> get topTvShowsList;
  @override
  List<HotAndNewM> get tenseDramasList;
  @override
  List<HotAndNewM> get SouthIndianCinemaList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

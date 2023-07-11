import 'package:json_annotation/json_annotation.dart';

part 'discover_movie.g.dart';

@JsonSerializable()
class DiscoverMovie {
  @JsonKey(name: 'results')
  List<HotAndNewM> results;

  DiscoverMovie({this.results = const []});

  factory DiscoverMovie.fromJson(Map<String, dynamic> json) {
    return _$DiscoverMovieFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DiscoverMovieToJson(this);
}

@JsonSerializable()
class HotAndNewM {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'orginal_name')
  String? orginalName;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;

  HotAndNewM({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.name,
    this.orginalName,
  });

  factory HotAndNewM.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewMFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewMToJson(this);
}

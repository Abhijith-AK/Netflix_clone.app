// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoverMovie _$DiscoverMovieFromJson(Map<String, dynamic> json) =>
    DiscoverMovie(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HotAndNewM.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DiscoverMovieToJson(DiscoverMovie instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

HotAndNewM _$HotAndNewMFromJson(Map<String, dynamic> json) => HotAndNewM(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      orginalName: json['orginal_name'] as String?,
    );

Map<String, dynamic> _$HotAndNewMToJson(HotAndNewM instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'orginal_name': instance.orginalName,
      'name': instance.name,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };

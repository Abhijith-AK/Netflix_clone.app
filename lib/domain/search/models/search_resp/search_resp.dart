import 'package:json_annotation/json_annotation.dart';

part 'search_resp.g.dart';

@JsonSerializable()
class SearchResp {
  @JsonKey(name: "results")
  List<SearchResultData> results;

  SearchResp({this.results = const []});

  factory SearchResp.fromJson(Map<String, dynamic> json) {
    return _$SearchRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespToJson(this);
}

@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: "title")
  String? title;

  SearchResultData({
    this.id,
    this.originalName,
    this.posterPath,
    this.title,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}

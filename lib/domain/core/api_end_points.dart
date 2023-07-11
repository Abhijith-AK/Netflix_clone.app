import '../../core/strings.dart';
import '../../infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kbaseURL/trending/all/day?api_key=$apiKey";
  static const search = "$kbaseURL/search/multi?api_key=$apiKey";
  static const hotandnewMo = "$kbaseURL/discover/movie?api_key=$apiKey";
  static const hotandnewTv = "$kbaseURL/trending/tv/day?api_key=$apiKey";
}

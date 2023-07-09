import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/search/models/search_resp/search_resp.dart';

abstract class SearchSearvice {
  Future<Either<MainFailure, SearchResp>> searchResult({
    required String searchQuery,
  });
}

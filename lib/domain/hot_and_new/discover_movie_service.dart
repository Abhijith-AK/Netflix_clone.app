import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/hot_and_new/model/discover_movie.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, DiscoverMovie>> getDiscoverMovieData();
  Future<Either<MainFailure, DiscoverMovie>> getDiscoverTVData();
}

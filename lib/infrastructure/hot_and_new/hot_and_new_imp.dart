import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/hot_and_new/discover_movie_service.dart';
import 'package:netflix_app/domain/hot_and_new/model/discover_movie.dart';

import '../../domain/core/api_end_points.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewImpl implements HotAndNewService {
  @override
  Future<Either<MainFailure, DiscoverMovie>> getDiscoverMovieData() async {
    try {
      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.hotandnewMo,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = DiscoverMovie.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, DiscoverMovie>> getDiscoverTVData() async {
    try {
      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.hotandnewTv,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = DiscoverMovie.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}

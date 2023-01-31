import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_recruitment_task/config/app_params.dart';
import 'package:flutter_recruitment_task/config/di/di.dart';
import 'package:flutter_recruitment_task/data/dto/movie_details.dart';
import 'package:flutter_recruitment_task/data/dto/movie_list.dart';
import 'package:flutter_recruitment_task/data/network/interceptors/api_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_api.g.dart';

@LazySingleton()
class MovieApi {
  late final MovieClient client;

  MovieApi() {
    client = MovieClient(_buildDio(getIt()));
  }

  Dio _buildDio(AppParams params) {
    return Dio(
      BaseOptions(
        baseUrl: params.apiBaseUrl,
      ),
    )..interceptors.addAll([
        ApiInterceptor(params: params),
        if (kDebugMode) PrettyDioLogger(),
      ]);
  }
}

@RestApi()
abstract class MovieClient {
  factory MovieClient(Dio dio, {String baseUrl}) = _MovieClient;

  @GET('/search/movie')
  Future<MovieListDto> searchMovies({
    @Query("query", encoded: true) String? query,
  });

  @GET('/movie/{movieId}')
  Future<MovieDetailsDto> getMovieDetails(
    @Path() int movieId,
  );
}

import 'package:flutter_recruitment_task/data/mappers/dto_to_local_mapper.dart';
import 'package:flutter_recruitment_task/data/network/movie_api.dart';
import 'package:flutter_recruitment_task/domain/models/movie.dart';
import 'package:flutter_recruitment_task/domain/models/movie_details.dart';
import 'package:flutter_recruitment_task/domain/repositories/movie_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final MovieApi api;

  MovieRepositoryImpl({
    required this.api,
  });

  @override
  Future<List<Movie>> getMovies({String? query}) async {
    final response = await api.client.searchMovies(query: query);
    return response.results.map((e) => e.mapToLocal()).toList();
  }

  @override
  Future<MovieDetails> getMovieDetails(int movieId) async {
    final response = await api.client.getMovieDetails(movieId);
    return response.mapToLocal();
  }
}

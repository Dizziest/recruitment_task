import 'package:flutter_recruitment_task/domain/models/movie.dart';
import 'package:flutter_recruitment_task/domain/models/movie_details.dart';

abstract class MovieRepository {
  Future<List<Movie>> getMovies({String? query});

  Future<MovieDetails> getMovieDetails(int movieId);
}
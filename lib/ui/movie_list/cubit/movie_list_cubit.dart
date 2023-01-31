import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/domain/models/movie.dart';
import 'package:flutter_recruitment_task/domain/repositories/movie_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'movie_list_state.dart';

part 'movie_list_cubit.freezed.dart';

@Injectable()
class MovieListCubit extends Cubit<MovieListState> {
  final MovieRepository _movieRepository;

  MovieListCubit({
    required MovieRepository movieRepository,
  })  : _movieRepository = movieRepository,
        super(const MovieListState.initial());

  Future<void> onSearchBoxSubmitted(String text) async {
    try {
      if (text.isEmpty) {
        return;
      }
      emit(const MovieListState.loading());
      final movies = await _movieRepository.getMovies(query: text);
      if (movies.isEmpty) {
        emit(const MovieListState.empty());
        return;
      }
      final sortedMovies = _sortMoviesByVoteAverage(movies);
      emit(MovieListState.success(sortedMovies));
    } catch (e) {
      emit(const MovieListState.failure());
    }
  }

  List<Movie> _sortMoviesByVoteAverage(List<Movie> movies) {
    return movies
      ..sort(
        (a, b) => b.voteAverage.compareTo(a.voteAverage),
      );
  }
}

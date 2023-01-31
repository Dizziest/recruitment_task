import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/domain/models/movie_details.dart';
import 'package:flutter_recruitment_task/domain/repositories/movie_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'movie_details_state.dart';

part 'movie_details_cubit.freezed.dart';

@Injectable()
class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final MovieRepository _movieRepository;

  MovieDetailsCubit({
    required MovieRepository movieRepository,
  })  : _movieRepository = movieRepository,
        super(const MovieDetailsState.initial());

  Future<void> loadDetails(int movieId) async {
    try {
      emit(const MovieDetailsState.loading());
      final response = await _movieRepository.getMovieDetails(movieId);
      emit(MovieDetailsState.success(response));
    } catch (e) {
      emit(const MovieDetailsState.failure());
    }
  }
}

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_recruitment_task/config/di/di.dart';
import 'package:flutter_recruitment_task/domain/models/movie_details.dart';
import 'package:flutter_recruitment_task/domain/repositories/movie_repository.dart';
import 'package:flutter_recruitment_task/ui/movie_details/cubit/movie_details_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  getIt
    ..registerSingleton<MovieRepository>(MockMovieRepository())
    ..registerFactory<MovieDetailsCubit>(
      () => MovieDetailsCubit(movieRepository: getIt()),
    );

  group('MovieDetailsCubit', () {
    const details = MovieDetails(
      id: 1,
      title: 'title',
      budget: 1,
      revenue: 1,
    );

    group('loadDetails(movieId)', () {
      blocTest<MovieDetailsCubit, MovieDetailsState>(
        'emits MovieDetailsState.loading and MovieDetailsState.success state '
            'when loadDetails() is successfully called',
        setUp: () => when(() => getIt<MovieRepository>().getMovieDetails(1))
            .thenAnswer((_) async => details),
        build: getIt,
        act: (cubit) => cubit.loadDetails(1),
        expect: () => [
          const MovieDetailsState.loading(),
          const MovieDetailsState.success(details),
        ],
        verify: (_) {
          verify(() => getIt<MovieRepository>().getMovieDetails(1)).called(1);
        },
      );

      blocTest<MovieDetailsCubit, MovieDetailsState>(
        'emits MovieDetailsState.loading and MovieDetailsState.failure state'
            ' when loadDetails() failed',
        setUp: () => when(() => getIt<MovieRepository>().getMovieDetails(1))
            .thenThrow(Exception()),
        build: getIt,
        act: (cubit) => cubit.loadDetails(1),
        expect: () => [
          const MovieDetailsState.loading(),
          const MovieDetailsState.failure(),
        ],
        verify: (_) {
          verify(() => getIt<MovieRepository>().getMovieDetails(1)).called(1);
        },
      );
    });
  });
}

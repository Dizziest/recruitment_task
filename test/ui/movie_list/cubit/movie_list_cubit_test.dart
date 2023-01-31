import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_recruitment_task/config/di/di.dart';
import 'package:flutter_recruitment_task/domain/models/movie.dart';
import 'package:flutter_recruitment_task/domain/repositories/movie_repository.dart';
import 'package:flutter_recruitment_task/ui/movie_list/cubit/movie_list_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  getIt..registerSingleton<MovieRepository>(MockMovieRepository())
  ..registerFactory<MovieListCubit>(
    () => MovieListCubit(movieRepository: getIt()),
  );

  group('MovieListCubit', () {
    group('onSearchBoxSubmitted(text)', () {
      final movies = <Movie>[
        const Movie(title: 'title1', voteAverage: 50.0, id: 1),
        const Movie(title: 'title2', voteAverage: 70.0, id: 2),
        const Movie(title: 'title3', voteAverage: 90.0, id: 3),
      ];

      final sortedMovies = movies.reversed.toList();

      blocTest<MovieListCubit, MovieListState>(
        'emits MovieListState.loading and MovieListState.success state with '
            'sorted movies when getMovies() is successfully called '
            'and fetched any movies',
        setUp: () =>
            when(() => getIt<MovieRepository>().getMovies(query: 'text'))
                .thenAnswer((_) async => movies),
        build: getIt,
        act: (cubit) => cubit.onSearchBoxSubmitted('text'),
        expect: () => [
          const MovieListState.loading(),
          MovieListState.success(sortedMovies),
        ],
        verify: (_) {
          verify(() => getIt<MovieRepository>().getMovies(query: 'text'))
              .called(1);
        },
      );

      blocTest<MovieListCubit, MovieListState>(
        'emits MovieListState.loading and MovieListState.empty state when '
            'getMovies() is successfully called but fetched no movies',
        setUp: () =>
            when(() => getIt<MovieRepository>().getMovies(query: 'text'))
                .thenAnswer((_) async => []),
        build: getIt,
        act: (cubit) => cubit.onSearchBoxSubmitted('text'),
        expect: () => [
          const MovieListState.loading(),
          const MovieListState.empty(),
        ],
        verify: (_) {
          verify(() => getIt<MovieRepository>().getMovies(query: 'text'))
              .called(1);
        },
      );

      blocTest<MovieListCubit, MovieListState>(
        'emits MovieListState.loading and MovieListState.failure state when '
            'getMovies() has failed',
        setUp: () =>
            when(() => getIt<MovieRepository>().getMovies(query: 'text'))
                .thenThrow(Exception()),
        build: getIt,
        act: (cubit) => cubit.onSearchBoxSubmitted('text'),
        expect: () => [
          const MovieListState.loading(),
          const MovieListState.failure(),
        ],
        verify: (_) {
          verify(() => getIt<MovieRepository>().getMovies(query: 'text'))
              .called(1);
        },
      );

      blocTest<MovieListCubit, MovieListState>(
        'emits nothing when query text is empty',
        build: getIt,
        act: (cubit) => cubit.onSearchBoxSubmitted(''),
        expect: List.empty,
        verify: (_) {
          verifyNever(() => getIt<MovieRepository>().getMovies(query: ''));
        },
      );
    });
  });
}

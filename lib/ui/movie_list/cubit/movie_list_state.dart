part of 'movie_list_cubit.dart';

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState.initial() = MovieListInitial;
  const factory MovieListState.loading() = MovieListLoading;
  const factory MovieListState.success(List<Movie> movies) = MovieListSuccess;
  const factory MovieListState.failure() = MovieListFailure;
  const factory MovieListState.empty() = MovieListEmpty;
}

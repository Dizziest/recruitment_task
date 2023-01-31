part of 'movie_details_cubit.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = _Initial;
  const factory MovieDetailsState.loading() = _Loading;
  const factory MovieDetailsState.success(MovieDetails movieDetails) = _Success;
  const factory MovieDetailsState.failure() = _Failure;
}

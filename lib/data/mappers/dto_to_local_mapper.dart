import 'package:flutter_recruitment_task/data/dto/movie.dart';
import 'package:flutter_recruitment_task/data/dto/movie_details.dart';
import 'package:flutter_recruitment_task/domain/models/movie.dart';
import 'package:flutter_recruitment_task/domain/models/movie_details.dart';

extension MovieDtoX on MovieDto {
  Movie mapToLocal() => Movie(title: title, voteAverage: voteAverage, id: id);
}

extension MovieDetailsDtoX on MovieDetailsDto {
  MovieDetails mapToLocal() =>
      MovieDetails(id: id, title: title, budget: budget, revenue: revenue,);
}

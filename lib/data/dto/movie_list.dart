import 'package:flutter_recruitment_task/data/dto/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_list.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieListDto {
  final int totalResults;
  final List<MovieDto> results;

  MovieListDto({
    required this.totalResults,
    required this.results,
  });

  factory MovieListDto.fromJson(Map<String, dynamic> json) =>
      _$MovieListDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListDtoToJson(this);
}

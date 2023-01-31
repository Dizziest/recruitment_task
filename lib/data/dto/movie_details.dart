import 'package:json_annotation/json_annotation.dart';

part 'movie_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieDetailsDto {
  final int id;
  final String title;
  final int budget;
  final int revenue;

  const MovieDetailsDto({
    required this.id,
    required this.title,
    required this.budget,
    required this.revenue,
  });

  factory MovieDetailsDto.fromJson(Map<String, dynamic> json) => _$MovieDetailsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailsDtoToJson(this);
}

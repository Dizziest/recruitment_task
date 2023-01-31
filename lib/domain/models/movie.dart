import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String title;
  final double voteAverage;
  final int id;

  const Movie({
    required this.title,
    required this.voteAverage,
    required this.id,
  });

  @override
  List<Object> get props => [title, voteAverage, id];
}
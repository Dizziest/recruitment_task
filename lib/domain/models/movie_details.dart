import 'package:equatable/equatable.dart';
import 'package:flutter_recruitment_task/config/di/di.dart';
import 'package:flutter_recruitment_task/domain/models/movie_single_info.dart';
import 'package:flutter_recruitment_task/domain/util/date_service.dart';
import 'package:flutter_recruitment_task/domain/util/value_formatter.dart';
import 'package:flutter_recruitment_task/localization/generated/l10n.dart';

class MovieDetails extends Equatable {
  static const _minProfitToWatch = 1000000;

  final int id;
  final String title;
  final int budget;
  final int revenue;

  const MovieDetails({
    required this.id,
    required this.title,
    required this.budget,
    required this.revenue,
  });

  List<MovieSingleInfo> get infoList {
    return [
      MovieSingleInfo(
          title: Translations.current.budget,
          content: ValueFormatter.toDollars(budget)),
      MovieSingleInfo(
          title: Translations.current.revenue,
          content: ValueFormatter.toDollars(revenue)),
      MovieSingleInfo(
        title: Translations.current.shouldIWatchItToday,
        content: shouldWatchToday
            ? Translations.current.yes
            : Translations.current.no,
      ),
    ];
  }

  int get _profit => revenue - budget;

  bool get shouldWatchToday =>
      getIt<DateService>().currentDateTime.weekday == DateTime.sunday &&
      _profit > _minProfitToWatch;

  @override
  List<Object> get props => [id, title, budget, revenue];
}

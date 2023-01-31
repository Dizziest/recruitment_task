import 'package:flutter_recruitment_task/config/di/di.dart';
import 'package:flutter_recruitment_task/domain/models/movie_details.dart';
import 'package:flutter_recruitment_task/domain/util/date_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDateService extends Mock implements DateService {}

void main() {
  final sundayDate = DateTime(2023, 01, 29);
  final notSundayDate = DateTime(2023, 01, 30);

  const properMovie = MovieDetails(
    id: 1,
    title: 'Title',
    budget: 1,
    revenue: 1000002,
  );

  const badMovie = MovieDetails(
    id: 1,
    title: 'Title',
    budget: 1,
    revenue: 1,
  );

  getIt.registerSingleton<DateService>(MockDateService());

  group('MovieDetails', () {
    test(
        'shouldWatchToday should return true for sunday and profit over 1000000',
        () {
      when(() => getIt<DateService>().currentDateTime).thenReturn(sundayDate);

      expect(properMovie.shouldWatchToday, true);
    });

    test('shouldWatchToday should return false when not sunday', () {
      when(() => getIt<DateService>().currentDateTime)
          .thenReturn(notSundayDate);

      expect(properMovie.shouldWatchToday, false);
    });

    test('shouldWatchToday should return false when profit below 1000000', () {
      when(() => getIt<DateService>().currentDateTime).thenReturn(sundayDate);

      expect(badMovie.shouldWatchToday, false);
    });

    test(
        'shouldWatchToday should return false when not sunday and profit below 1000000',
        () {
      when(() => getIt<DateService>().currentDateTime)
          .thenReturn(notSundayDate);

      expect(badMovie.shouldWatchToday, false);
    });
  });
}

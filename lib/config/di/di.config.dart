// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_recruitment_task/data/network/movie_api.dart' as _i4;
import 'package:flutter_recruitment_task/data/repositories/movie_repository/movie_repository_impl.dart'
    as _i6;
import 'package:flutter_recruitment_task/domain/repositories/movie_repository.dart'
    as _i5;
import 'package:flutter_recruitment_task/domain/util/date_service.dart' as _i3;
import 'package:flutter_recruitment_task/ui/movie_details/cubit/movie_details_cubit.dart'
    as _i7;
import 'package:flutter_recruitment_task/ui/movie_list/cubit/movie_list_cubit.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DateService>(() => _i3.DateService());
    gh.lazySingleton<_i4.MovieApi>(() => _i4.MovieApi());
    gh.factory<_i5.MovieRepository>(
        () => _i6.MovieRepositoryImpl(api: gh<_i4.MovieApi>()));
    gh.factory<_i7.MovieDetailsCubit>(() =>
        _i7.MovieDetailsCubit(movieRepository: gh<_i5.MovieRepository>()));
    gh.factory<_i8.MovieListCubit>(
        () => _i8.MovieListCubit(movieRepository: gh<_i5.MovieRepository>()));
    return this;
  }
}

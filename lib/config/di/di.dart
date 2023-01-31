import 'package:flutter_recruitment_task/config/app_params.dart';
import 'package:flutter_recruitment_task/config/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initDependency(AppParams params) async {
  getIt
    ..registerSingleton<AppParams>(params)
    ..init(environment: params.environment);
}

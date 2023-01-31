import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/config/app_config.dart';
import 'package:flutter_recruitment_task/config/app_params.dart';
import 'package:flutter_recruitment_task/movie_app.dart';

class DevConfig extends AppConfig {
  DevConfig()
      : super(
          params: const AppParams(
            environment: 'dev',
            apiBaseUrl: 'https://api.themoviedb.org/3',
            apiKey: '052afdb6e0ab9af424e3f3c8edbb33fb',
          ),
        );

  @override
  Widget get initialWidget {
    return MovieApp(
      router: router,
    );
  }
}

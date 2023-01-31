import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/movie_app.dart';

import 'app_config.dart';
import 'app_params.dart';

class ProdConfig extends AppConfig {
  ProdConfig()
      : super(
          params: const AppParams(
            environment: 'prod',
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

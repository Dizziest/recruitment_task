import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/router/screen_paths.dart';
import 'package:flutter_recruitment_task/ui/movie_details/movie_details_page.dart';
import 'package:flutter_recruitment_task/ui/movie_list/movie_list_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static Widget _movieListRouteBuilder(
          BuildContext context, GoRouterState state) =>
      const MovieListPage();

  static Widget _movieDetailsRouteBuilder(
      BuildContext context, GoRouterState state) {
    final movieId = int.parse(state.params['movieId']!);
    return MovieDetailsPage(
      movieId: movieId,
      movieTitle: state.extra as String?,
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: ScreenPaths.movieList,
    routes: [
      GoRoute(
        path: ScreenPaths.movieList,
        builder: _movieListRouteBuilder,
        routes: [
          GoRoute(
            path: 'movie/:movieId',
            builder: _movieDetailsRouteBuilder,
          ),
        ],
      ),
    ],
  );

  GoRouter get router => _router;
}

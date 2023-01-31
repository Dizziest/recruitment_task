import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/config/di/di.dart';
import 'package:flutter_recruitment_task/domain/models/movie.dart';
import 'package:flutter_recruitment_task/localization/generated/l10n.dart';
import 'package:flutter_recruitment_task/router/screen_paths.dart';
import 'package:flutter_recruitment_task/ui/common/page_error_widget.dart';
import 'package:flutter_recruitment_task/ui/movie_list/cubit/movie_list_cubit.dart';
import 'package:flutter_recruitment_task/ui/movie_list/widgets/movie_card.dart';
import 'package:flutter_recruitment_task/ui/movie_list/widgets/search_box.dart';
import 'package:go_router/go_router.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieListCubit>(
      create: (_) => getIt<MovieListCubit>(),
      child: const _MovieListPageContent(),
    );
  }
}

class _MovieListPageContent extends StatelessWidget {
  const _MovieListPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.movie_creation_outlined),
              onPressed: () {
                //TODO implement navigation
              },
            ),
          ],
          title: Text(Translations.current.appName),
        ),
        body: Column(
          children: <Widget>[
            SearchBox(
              onSubmitted: context.read<MovieListCubit>().onSearchBoxSubmitted,
            ),
            Expanded(child: _content()),
          ],
        ),
      );

  Widget _content() => BlocBuilder<MovieListCubit, MovieListState>(
        builder: (context, state) {
          return state.when(
            initial: _initialContent,
            loading: _loadingContent,
            success: _successContent,
            failure: () => const PageErrorWidget(),
            empty: _emptyContent,
          );
        },
      );

  Widget _initialContent() => Center(
        child: Text(Translations.current.moviesListInitialText),
      );

  Widget _loadingContent() => const Center(child: CircularProgressIndicator());

  Widget _emptyContent() => Center(
        child: Text(Translations.current.moviesListEmptyScreenText),
      );

  Widget _successContent(List<Movie> movies) => ListView.separated(
        separatorBuilder: (context, index) => Container(
          height: 1.0,
          color: Colors.grey.shade300,
        ),
        itemBuilder: (context, index) => MovieCard(
          title: movies[index].title,
          rating: '${(movies[index].voteAverage * 10).toInt()}%',
          onTap: () {
            GoRouter.of(context).go(
              ScreenPaths.movieDetails(movies[index].id),
              extra: movies[index].title,
            );
          },
        ),
        itemCount: movies.length,
      );
}

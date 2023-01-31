import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/config/di/di.dart';
import 'package:flutter_recruitment_task/domain/models/movie_single_info.dart';
import 'package:flutter_recruitment_task/localization/generated/l10n.dart';
import 'package:flutter_recruitment_task/ui/common/page_error_widget.dart';
import 'package:flutter_recruitment_task/ui/movie_details/cubit/movie_details_cubit.dart';

class MovieDetailsPage extends StatelessWidget {
  final int movieId;
  final String? movieTitle;

  const MovieDetailsPage({
    Key? key,
    required this.movieId,
    this.movieTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieDetailsCubit>(
      create: (_) => getIt<MovieDetailsCubit>()..loadDetails(movieId),
      child: _MovieDetailsPageContent(
        movieId: movieId,
        movieTitle: movieTitle,
      ),
    );
  }
}

class _MovieDetailsPageContent extends StatelessWidget {
  final int movieId;
  final String? movieTitle;

  const _MovieDetailsPageContent({
    required this.movieId,
    this.movieTitle,
  });

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
        builder: (ctx, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                state.maybeWhen(
                  success: (movieDetails) => movieDetails.title,
                  orElse: () => movieTitle ?? Translations.current.appName,
                ),
              ),
            ),
            body: Column(
              children: [
                Expanded(child: _content(ctx, state)),
              ],
            ),
          );
        },
      );

  Widget _content(BuildContext context, MovieDetailsState state) => state.when(
        initial: () => Container(),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        success: (movieDetails) => _detailsList(movieDetails.infoList),
        failure: () => PageErrorWidget(
          onTryAgain: () =>
              context.read<MovieDetailsCubit>().loadDetails(movieId),
        ),
      );

  Widget _detailsList(List<MovieSingleInfo> movieInfo) => ListView.separated(
      separatorBuilder: (context, index) => Container(
        height: 1.0,
        color: Colors.grey.shade300,
      ),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              movieInfo[index].title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8.0),
            Text(
              movieInfo[index].content,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
      itemCount: movieInfo.length,
    );
}

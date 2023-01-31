import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/localization/generated/l10n.dart';
import 'package:flutter_recruitment_task/router/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MovieApp extends StatelessWidget {
  final AppRouter router;

  const MovieApp({super.key, 
    required this.router,
  });

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme: ThemeData(primarySwatch: Colors.amber),
        routerConfig: router.router,
        onGenerateTitle: (context) {
          return Translations.current.appName;
        },
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          Translations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: Translations.delegate.supportedLocales,
      );
}

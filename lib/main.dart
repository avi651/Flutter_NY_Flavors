import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ny_times/src/core/resources/app_strings.dart';
import 'package:ny_times/src/feature/news/presentation/screen/news_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: AppStrings.appTitle,
      home: NewsScreen(),
      // routeInformationParser:
      //     NyAppRouter.returnRouter(false).routeInformationParser,
      // routerDelegate: NyAppRouter.returnRouter(false).routerDelegate,
    );
  }
}

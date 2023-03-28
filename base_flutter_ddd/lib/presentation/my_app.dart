import 'package:base_flutter_ddd/l10n/app_localizations.dart';
import 'package:base_flutter_ddd/presentation/route/app_route.dart';
import 'package:flutter/material.dart';

import 'core/style.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.initRoute}) : super(key: key);

  final String initRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (setting) => onGenerateRoute(setting, initRoute),
      theme: appTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: RouteName.home,
    );
  }
}

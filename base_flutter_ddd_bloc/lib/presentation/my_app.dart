
import 'package:base_flutter_ddd_bloc/domain/init_data/init_data.dart';
import 'package:base_flutter_ddd_bloc/l10n/app_localizations.dart';
import 'package:base_flutter_ddd_bloc/presentation/route/app_route.dart';
import 'package:flutter/material.dart';

import 'core/style.dart';

InitData appData = const InitData();

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

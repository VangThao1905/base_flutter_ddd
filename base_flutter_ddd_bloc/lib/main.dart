import 'dart:async';

import 'package:base_flutter_ddd_bloc/presentation/my_app.dart';
import 'package:base_flutter_ddd_bloc/presentation/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'application/core/injection.dart';

Future<void> main() async {
  await setupApp(RouteName.home);
}

Future<void> setupApp(String routeName) async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection(Environment.dev);

  runApp(MyApp(initRoute: routeName));
}

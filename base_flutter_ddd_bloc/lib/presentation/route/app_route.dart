import 'dart:developer';

import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/presentation/detail/detail_page.dart';
import 'package:base_flutter_ddd_bloc/presentation/home/home_page.dart';
import 'package:base_flutter_ddd_bloc/presentation/student_edit/student_edit_page.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const String home = '/';
  static const String detail = '/detail';
  static const String studentEdit = '/student_edit';
}

MaterialPageRoute onGenerateRoute(RouteSettings settings, String initName) {
  Map<String, dynamic> arg = <String, dynamic>{};
  log('arg => $arg');
  if (settings.arguments != null) {
    arg = settings.arguments as Map<String, dynamic>;
  }

  switch (settings.name) {
    case RouteName.home:
      return MaterialPageRoute<dynamic>(
        fullscreenDialog: true,
        builder: (BuildContext context) => const HomePage(),
        settings: const RouteSettings(name: RouteName.home),
      );
    case RouteName.detail:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => DetailPage(
          student: arg[Constant.student],
        ),
        settings: const RouteSettings(name: RouteName.detail),
      );
    case RouteName.studentEdit:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => StudentEditPage(
          student: arg[Constant.student],
        ),
        settings: const RouteSettings(name: RouteName.detail),
      );

    default:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const HomePage(),
        settings: const RouteSettings(name: RouteName.home),
      );
  }
}

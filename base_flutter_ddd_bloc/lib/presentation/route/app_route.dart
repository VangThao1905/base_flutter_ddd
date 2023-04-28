import 'dart:developer';

import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/application/core/injection.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_cubit.dart';
import 'package:base_flutter_ddd_bloc/presentation/widgets/failure_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/home/home_page.dart';
import '../pages/student_detail/detail_page.dart';
import '../pages/update_student/update_student_page.dart';

class RouteName {
  static const String home = '/';
  static const String detail = '/detail';
  static const String studentEdit = '/student_edit';
  static const String failureView = '/failure_view';
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
        builder: (BuildContext context) => BlocProvider.value(
          value: getIt<StudentCubit>(),
          child: const HomePage(),
        ),
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
        builder: (BuildContext context) => UpdateStudentPage(
          student: arg[Constant.student],
        ),
        settings: const RouteSettings(name: RouteName.detail),
      );

    case RouteName.failureView:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const FailureView());

    default:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const HomePage(),
        settings: const RouteSettings(name: RouteName.home),
      );
  }
}

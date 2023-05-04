import 'package:base_flutter_ddd_bloc/application/add_student/add_student_cubit.dart';
import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_cubit.dart';
import 'package:base_flutter_ddd_bloc/application/update_student/update_student_cubit.dart';
import 'package:base_flutter_ddd_bloc/domain/init_data/init_data.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: 'initStart')
configureInjection(String env) async {
  getIt.registerLazySingleton(() => const InitData());

  getIt.registerSingleton(StudentCubit());

  getIt.registerLazySingleton(() => AddStudentCubit(),
      instanceName: Constant.studentUpdateCubit);

  getIt.registerLazySingleton(() => UpdateStudentCubit(),
      instanceName: Constant.studentUpdateCubit);

  await getIt.allReady();
  initStart(getIt);
}

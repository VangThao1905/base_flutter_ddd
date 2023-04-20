import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/application/core/injection.config.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_cubit.dart';
import 'package:base_flutter_ddd_bloc/application/student_udpate/student_update_cubit.dart';
import 'package:base_flutter_ddd_bloc/domain/init_data/init_data.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: 'initStart')
configureInjection(String env) async {
  getIt.registerLazySingleton(() => const InitData());

  getIt.registerLazySingleton(() => StudentCubit(),
      instanceName: Constant.studentAll);

  getIt.registerLazySingleton(() => StudentUpdateCubit(),
      instanceName: Constant.studentUpdateCubit);

  await getIt.allReady();
  initStart(getIt);
}

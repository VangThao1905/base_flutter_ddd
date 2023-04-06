import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/application/core/injection.config.dart';
import 'package:base_flutter_ddd_bloc/application/inbox/inbox_bloc.dart';
import 'package:base_flutter_ddd_bloc/domain/init_data/init_data.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: 'initStart')
configureInjection(String env) async {
  getIt.registerLazySingleton(() => const InitData());

  getIt.registerLazySingleton(() => InboxBloc(),
      instanceName: Constant.inboxAll);

  getIt.registerLazySingleton(() => InboxBloc(),
      instanceName: Constant.inboxNotification);

  getIt.registerLazySingleton(() => InboxBloc(),
      instanceName: Constant.inboxPromotion);

  await getIt.allReady();
  initStart(getIt);
}

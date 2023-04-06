// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/inbox/i_inbox_repository.dart' as _i8;
import '../../infrastructure/datasource/core/api_handler.dart' as _i3;
import '../../infrastructure/datasource/remote/inbox_ds.dart' as _i5;
import '../../infrastructure/inbox/inbox_mapper.dart' as _i7;
import '../../infrastructure/inbox/inbox_repository.dart' as _i9;
import '../home/home_bloc.dart' as _i4;
import '../inbox_detail/inbox_detail_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt initStart(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.APIHandler>(_i3.APIHandler());
  gh.singleton<_i4.HomeBloc>(_i4.HomeBloc());
  gh.singleton<_i5.InboxDS>(_i5.InboxDS());
  gh.factory<_i6.InboxDetailBloc>(() => _i6.InboxDetailBloc());
  gh.singleton<_i7.InboxMapper>(_i7.InboxMapper());
  gh.factory<_i8.IInboxRepository>(
      () => _i9.InboxRepository(get<_i5.InboxDS>(), get<_i7.InboxMapper>()));
  return get;
}

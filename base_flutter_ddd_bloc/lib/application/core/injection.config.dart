// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/student/i_student_repository.dart' as _i9;
import '../../infrastructure/datasource/core/api_handler.dart' as _i3;
import '../../infrastructure/datasource/remote/student_service.dart' as _i7;
import '../../infrastructure/student/student_mapper.dart' as _i6;
import '../../infrastructure/student/student_repository.dart' as _i10;
import '../add_student/add_student_cubit.dart' as _i4;
import '../home/home_bloc.dart' as _i5;
import '../update_student/update_student_cubit.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt initStart(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.APIHandler>(_i3.APIHandler());
  gh.factory<_i4.AddStudentCubit>(() => _i4.AddStudentCubit());
  gh.singleton<_i5.HomeBloc>(_i5.HomeBloc());
  gh.singleton<_i6.StudentMapper>(_i6.StudentMapper());
  gh.singleton<_i7.StudentService>(_i7.StudentService());
  gh.factory<_i8.UpdateStudentCubit>(() => _i8.UpdateStudentCubit());
  gh.factory<_i9.IStudentRepository>(() => _i10.StudentRepository(
      get<_i7.StudentService>(), get<_i6.StudentMapper>()));
  return get;
}

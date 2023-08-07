// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/appoiments/data/repositories/get_appoinments_repository_impl.dart'
    as _i4;
import '../../features/appoiments/domain/repositories/get_appoinments_repository.dart'
    as _i3;
import '../../features/appoiments/presentation/bloc/appoinmets_bloc.dart'
    as _i12;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i6;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i5;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i7;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i9;
import '../../features/login/domain/repositories/login_repository.dart' as _i8;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i13;
import '../../features/signup/bloc/signup_bloc.dart' as _i14;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i11;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i10;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.GetAppoinmentsRepository>(
        () => _i4.GetAppoinmentsRepoImpliment());
    gh.lazySingleton<_i5.GetAvailableDoctorRepository>(
        () => _i6.GetAvailableDoctorRepoImpliment());
    gh.factory<_i7.HomeBloc>(
        () => _i7.HomeBloc(gh<_i5.GetAvailableDoctorRepository>()));
    gh.lazySingleton<_i8.LoginRepository>(() => _i9.LoginRepoImpliment());
    gh.lazySingleton<_i10.SignupRepository>(() => _i11.SignupRepoImpliment());
    gh.factory<_i12.AppoinmetsBloc>(
        () => _i12.AppoinmetsBloc(gh<_i3.GetAppoinmentsRepository>()));
    gh.factory<_i13.LoginBloc>(() => _i13.LoginBloc(gh<_i8.LoginRepository>()));
    gh.factory<_i14.SignupBloc>(
        () => _i14.SignupBloc(gh<_i10.SignupRepository>()));
    return this;
  }
}

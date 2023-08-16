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

import '../../features/appoiments/data/repositories/create_appoinments_repsitory_impl.dart'
    as _i4;
import '../../features/appoiments/data/repositories/get_appoinments_repository_impl.dart'
    as _i6;
import '../../features/appoiments/domain/repositories/create_appoinments_repository.dart'
    as _i3;
import '../../features/appoiments/domain/repositories/get_appoinments_repository.dart'
    as _i5;
import '../../features/appoiments/presentation/bloc/appoinmets_bloc.dart'
    as _i20;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i8;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i7;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i11;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i13;
import '../../features/login/data/repositories/otp_repository_impl.dart'
    as _i15;
import '../../features/login/domain/repositories/login_repository.dart' as _i12;
import '../../features/login/domain/repositories/otp_repository.dart' as _i14;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i21;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i10;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i19;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i9;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i18;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i22;
import '../../features/signup/bloc/signup_bloc.dart' as _i23;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i17;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i16;

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
    gh.lazySingleton<_i3.CreateAppoinmentsRepository>(
        () => _i4.CreateAppoinmentsRepoImpliment());
    gh.lazySingleton<_i5.GetAppoinmentsRepository>(
        () => _i6.GetAppoinmentsRepoImpliment());
    gh.lazySingleton<_i7.GetAvailableDoctorRepository>(
        () => _i8.GetAvailableDoctorRepoImpliment());
    gh.lazySingleton<_i9.GetProfileRepository>(
        () => _i10.GetProfileRepoImpliment());
    gh.factory<_i11.HomeBloc>(
        () => _i11.HomeBloc(gh<_i7.GetAvailableDoctorRepository>()));
    gh.lazySingleton<_i12.LoginRepository>(() => _i13.LoginRepoImpliment());
    gh.lazySingleton<_i14.OtpRepository>(() => _i15.OtpRepoImpliment());
    gh.lazySingleton<_i16.SignupRepository>(() => _i17.SignupRepoImpliment());
    gh.lazySingleton<_i18.UpdateProfileRepository>(
        () => _i19.UpdateProfileRepoImpliment());
    gh.factory<_i20.AppoinmetsBloc>(() => _i20.AppoinmetsBloc(
          gh<_i5.GetAppoinmentsRepository>(),
          gh<_i3.CreateAppoinmentsRepository>(),
        ));
    gh.factory<_i21.LoginBloc>(() => _i21.LoginBloc(
          gh<_i12.LoginRepository>(),
          gh<_i14.OtpRepository>(),
        ));
    gh.factory<_i22.ProfileBloc>(() => _i22.ProfileBloc(
          gh<_i9.GetProfileRepository>(),
          gh<_i18.UpdateProfileRepository>(),
        ));
    gh.factory<_i23.SignupBloc>(
        () => _i23.SignupBloc(gh<_i16.SignupRepository>()));
    return this;
  }
}

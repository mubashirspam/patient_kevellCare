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
    as _i10;
import '../../features/appoiments/domain/repositories/create_appoinments_repository.dart'
    as _i3;
import '../../features/appoiments/domain/repositories/get_appoinments_repository.dart'
    as _i9;
import '../../features/appoiments/presentation/bloc/appoinmets_bloc.dart'
    as _i25;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i12;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i11;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i15;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i17;
import '../../features/login/data/repositories/otp_repository_impl.dart'
    as _i19;
import '../../features/login/domain/repositories/login_repository.dart' as _i16;
import '../../features/login/domain/repositories/otp_repository.dart' as _i18;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i26;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i14;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i24;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i13;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i23;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i27;
import '../../features/report/data/repository/fetch_report_general_impliment.dart'
    as _i6;
import '../../features/report/data/repository/fetch_report_impliment.dart'
    as _i8;
import '../../features/report/domain/repositories/fetch_report_general_repository.dart'
    as _i5;
import '../../features/report/domain/repositories/fetch_report_repository.dart'
    as _i7;
import '../../features/report/presentation/bloc/report_bloc.dart' as _i20;
import '../../features/signup/bloc/signup_bloc.dart' as _i28;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i22;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i21;

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
    gh.lazySingleton<_i5.FetchReportGeneraInfoRepository>(
        () => _i6.FetchReportGeneraInfoRepoImpliment());
    gh.lazySingleton<_i7.FetchReportRepository>(
        () => _i8.FetchReportRepoImpliment());
    gh.lazySingleton<_i9.GetAppoinmentsRepository>(
        () => _i10.GetAppoinmentsRepoImpliment());
    gh.lazySingleton<_i11.GetAvailableDoctorRepository>(
        () => _i12.GetAvailableDoctorRepoImpliment());
    gh.lazySingleton<_i13.GetProfileRepository>(
        () => _i14.GetProfileRepoImpliment());
    gh.factory<_i15.HomeBloc>(
        () => _i15.HomeBloc(gh<_i11.GetAvailableDoctorRepository>()));
    gh.lazySingleton<_i16.LoginRepository>(() => _i17.LoginRepoImpliment());
    gh.lazySingleton<_i18.OtpRepository>(() => _i19.OtpRepoImpliment());
    gh.factory<_i20.ReportBloc>(() => _i20.ReportBloc(
          gh<_i5.FetchReportGeneraInfoRepository>(),
          gh<_i7.FetchReportRepository>(),
        ));
    gh.lazySingleton<_i21.SignupRepository>(() => _i22.SignupRepoImpliment());
    gh.lazySingleton<_i23.UpdateProfileRepository>(
        () => _i24.UpdateProfileRepoImpliment());
    gh.factory<_i25.AppoinmetsBloc>(() => _i25.AppoinmetsBloc(
          gh<_i9.GetAppoinmentsRepository>(),
          gh<_i3.CreateAppoinmentsRepository>(),
        ));
    gh.factory<_i26.LoginBloc>(() => _i26.LoginBloc(
          gh<_i16.LoginRepository>(),
          gh<_i18.OtpRepository>(),
        ));
    gh.factory<_i27.ProfileBloc>(() => _i27.ProfileBloc(
          gh<_i13.GetProfileRepository>(),
          gh<_i23.UpdateProfileRepository>(),
        ));
    gh.factory<_i28.SignupBloc>(
        () => _i28.SignupBloc(gh<_i21.SignupRepository>()));
    return this;
  }
}

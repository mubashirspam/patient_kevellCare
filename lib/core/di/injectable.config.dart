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
import '../../features/appoiments/data/repositories/delete_appoiment_repository_impl.dart'
    as _i6;
import '../../features/appoiments/data/repositories/get_appoinments_repository_impl.dart'
    as _i12;
import '../../features/appoiments/data/repositories/update_appoiment_repository_impl.dart'
    as _i26;
import '../../features/appoiments/domain/repositories/create_appoinments_repository.dart'
    as _i3;
import '../../features/appoiments/domain/repositories/delete_appoinments_repository.dart'
    as _i5;
import '../../features/appoiments/domain/repositories/get_appoinments_repository.dart'
    as _i11;
import '../../features/appoiments/domain/repositories/update_appoinments_repository.dart'
    as _i25;
import '../../features/appoiments/presentation/bloc/appoinmets_bloc.dart'
    as _i31;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i14;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i13;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i17;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i19;
import '../../features/login/data/repositories/otp_repository_impl.dart'
    as _i21;
import '../../features/login/domain/repositories/login_repository.dart' as _i18;
import '../../features/login/domain/repositories/otp_repository.dart' as _i20;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i32;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i16;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i28;
import '../../features/profile/data/repositories/upload_image_repository_impl.dart'
    as _i30;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i15;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i27;
import '../../features/profile/domain/repositories/upload_image_repository.dart'
    as _i29;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i33;
import '../../features/report/data/repository/fetch_report_general_impliment.dart'
    as _i8;
import '../../features/report/data/repository/fetch_report_impliment.dart'
    as _i10;
import '../../features/report/domain/repositories/fetch_report_general_repository.dart'
    as _i7;
import '../../features/report/domain/repositories/fetch_report_repository.dart'
    as _i9;
import '../../features/report/presentation/bloc/report_bloc.dart' as _i22;
import '../../features/signup/bloc/signup_bloc.dart' as _i34;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i24;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i23;

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
    gh.lazySingleton<_i5.DeleteAppoinmentsRepository>(
        () => _i6.DeleteAppoinmentsRepoImpliment());
    gh.lazySingleton<_i7.FetchReportGeneraInfoRepository>(
        () => _i8.FetchReportGeneraInfoRepoImpliment());
    gh.lazySingleton<_i9.FetchReportRepository>(
        () => _i10.FetchReportRepoImpliment());
    gh.lazySingleton<_i11.GetAppoinmentsRepository>(
        () => _i12.GetAppoinmentsRepoImpliment());
    gh.lazySingleton<_i13.GetAvailableDoctorRepository>(
        () => _i14.GetAvailableDoctorRepoImpliment());
    gh.lazySingleton<_i15.GetProfileRepository>(
        () => _i16.GetProfileRepoImpliment());
    gh.factory<_i17.HomeBloc>(
        () => _i17.HomeBloc(gh<_i13.GetAvailableDoctorRepository>()));
    gh.lazySingleton<_i18.LoginRepository>(() => _i19.LoginRepoImpliment());
    gh.lazySingleton<_i20.OtpRepository>(() => _i21.OtpRepoImpliment());
    gh.factory<_i22.ReportBloc>(() => _i22.ReportBloc(
          gh<_i7.FetchReportGeneraInfoRepository>(),
          gh<_i9.FetchReportRepository>(),
        ));
    gh.lazySingleton<_i23.SignupRepository>(() => _i24.SignupRepoImpliment());
    gh.lazySingleton<_i25.UpdateAppoinmentsRepository>(
        () => _i26.UpdateAppoinmentRepoImpliment());
    gh.lazySingleton<_i27.UpdateProfileRepository>(
        () => _i28.UpdateProfileRepoImpliment());
    gh.lazySingleton<_i29.UploadImageRepository>(
        () => _i30.UploadImageRepoImpliment());
    gh.factory<_i31.AppoinmetsBloc>(() => _i31.AppoinmetsBloc(
          gh<_i11.GetAppoinmentsRepository>(),
          gh<_i3.CreateAppoinmentsRepository>(),
          gh<_i5.DeleteAppoinmentsRepository>(),
          gh<_i25.UpdateAppoinmentsRepository>(),
        ));
    gh.factory<_i32.LoginBloc>(() => _i32.LoginBloc(
          gh<_i18.LoginRepository>(),
          gh<_i20.OtpRepository>(),
        ));
    gh.factory<_i33.ProfileBloc>(() => _i33.ProfileBloc(
          gh<_i15.GetProfileRepository>(),
          gh<_i27.UpdateProfileRepository>(),
          gh<_i29.UploadImageRepository>(),
        ));
    gh.factory<_i34.SignupBloc>(
        () => _i34.SignupBloc(gh<_i23.SignupRepository>()));
    return this;
  }
}

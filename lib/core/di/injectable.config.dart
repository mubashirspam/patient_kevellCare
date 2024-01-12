// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/appoiments/data/repositories/create_appoinments_repsitory_impl.dart'
    as _i6;
import '../../features/appoiments/data/repositories/delete_appoiment_repository_impl.dart'
    as _i10;
import '../../features/appoiments/data/repositories/get_appoinments_repository_impl.dart'
    as _i22;
import '../../features/appoiments/data/repositories/update_appoiment_repository_impl.dart'
    as _i39;
import '../../features/appoiments/domain/repositories/create_appoinments_repository.dart'
    as _i5;
import '../../features/appoiments/domain/repositories/delete_appoinments_repository.dart'
    as _i9;
import '../../features/appoiments/domain/repositories/get_appoinments_repository.dart'
    as _i21;
import '../../features/appoiments/domain/repositories/update_appoinments_repository.dart'
    as _i38;
import '../../features/appoiments/presentation/bloc/appoinmets_bloc.dart'
    as _i44;
import '../../features/chat/data/repository/fetch_chat_profile_impliment.dart'
    as _i14;
import '../../features/chat/domain/repository/fetch_chat_profile_repository.dart'
    as _i13;
import '../../features/chat/presentation/bloc/chat_bloc.dart' as _i45;
import '../../features/forgot/data/repositories/change_password_repository_impl.dart'
    as _i4;
import '../../features/forgot/data/repositories/forgot_repository_impl.dart'
    as _i20;
import '../../features/forgot/domain/repositories/change_pass_repository.dart'
    as _i3;
import '../../features/forgot/domain/repositories/forgot_repository.dart'
    as _i19;
import '../../features/forgot/presentation/bloc/forgot_bloc.dart' as _i46;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i24;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i23;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i29;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i31;
import '../../features/login/data/repositories/otp_repository_impl.dart'
    as _i33;
import '../../features/login/domain/repositories/login_repository.dart' as _i30;
import '../../features/login/domain/repositories/otp_repository.dart' as _i32;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i47;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i26;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i41;
import '../../features/profile/data/repositories/upload_image_repository_impl.dart'
    as _i43;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i25;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i40;
import '../../features/profile/domain/repositories/upload_image_repository.dart'
    as _i42;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i48;
import '../../features/rating/data/repositories/create%20_rating_repository_impl.dart'
    as _i8;
import '../../features/rating/data/repositories/edit_rating_repository_impl.dart'
    as _i12;
import '../../features/rating/data/repositories/get_rating_repository_impl.dart'
    as _i28;
import '../../features/rating/domain/repositories/create%20_rating_repository.dart'
    as _i7;
import '../../features/rating/domain/repositories/edit_rating_repository.dart'
    as _i11;
import '../../features/rating/domain/repositories/get_rating_repository.dart'
    as _i27;
import '../../features/rating/presentation/bloc/rating_bloc.dart' as _i34;
import '../../features/report/data/repository/fetch_report_general_impliment.dart'
    as _i16;
import '../../features/report/data/repository/fetch_report_impliment.dart'
    as _i18;
import '../../features/report/domain/repositories/fetch_report_general_repository.dart'
    as _i15;
import '../../features/report/domain/repositories/fetch_report_repository.dart'
    as _i17;
import '../../features/report/presentation/bloc/report_bloc.dart' as _i35;
import '../../features/signup/bloc/signup_bloc.dart' as _i49;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i37;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i36;

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
    gh.lazySingleton<_i3.ChangePasswordRepository>(
        () => _i4.ChangePassRepoImpliment());
    gh.lazySingleton<_i5.CreateAppoinmentsRepository>(
        () => _i6.CreateAppoinmentsRepoImpliment());
    gh.lazySingleton<_i7.CreateRatingRepository>(
        () => _i8.CreateRatingRepoImpliment());
    gh.lazySingleton<_i9.DeleteAppoinmentsRepository>(
        () => _i10.DeleteAppoinmentsRepoImpliment());
    gh.lazySingleton<_i11.EditRatingRepository>(
        () => _i12.EditRatingRepoImpliment());
    gh.lazySingleton<_i13.FetchChatProfileRepository>(
        () => _i14.FetchChatProfileRepoImpliment());
    gh.lazySingleton<_i15.FetchReportGeneraInfoRepository>(
        () => _i16.FetchReportGeneraInfoRepoImpliment());
    gh.lazySingleton<_i17.FetchReportRepository>(
        () => _i18.FetchReportRepoImpliment());
    gh.lazySingleton<_i19.ForgotRepository>(() => _i20.ForgotRepoImpliment());
    gh.lazySingleton<_i21.GetAppoinmentsRepository>(
        () => _i22.GetAppoinmentsRepoImpliment());
    gh.lazySingleton<_i23.GetAvailableDoctorRepository>(
        () => _i24.GetAvailableDoctorRepoImpliment());
    gh.lazySingleton<_i25.GetProfileRepository>(
        () => _i26.GetProfileRepoImpliment());
    gh.lazySingleton<_i27.GetRatingRepository>(
        () => _i28.GetRatingRepoImpliment());
    gh.factory<_i29.HomeBloc>(
        () => _i29.HomeBloc(gh<_i23.GetAvailableDoctorRepository>()));
    gh.lazySingleton<_i30.LoginRepository>(() => _i31.LoginRepoImpliment());
    gh.lazySingleton<_i32.OtpRepository>(() => _i33.OtpRepoImpliment());
    gh.factory<_i34.RatingBloc>(() => _i34.RatingBloc(
          gh<_i27.GetRatingRepository>(),
          gh<_i11.EditRatingRepository>(),
          gh<_i7.CreateRatingRepository>(),
        ));
    gh.factory<_i35.ReportBloc>(() => _i35.ReportBloc(
          gh<_i15.FetchReportGeneraInfoRepository>(),
          gh<_i17.FetchReportRepository>(),
        ));
    gh.lazySingleton<_i36.SignupRepository>(() => _i37.SignupRepoImpliment());
    gh.lazySingleton<_i38.UpdateAppoinmentsRepository>(
        () => _i39.UpdateAppoinmentRepoImpliment());
    gh.lazySingleton<_i40.UpdateProfileRepository>(
        () => _i41.UpdateProfileRepoImpliment());
    gh.lazySingleton<_i42.UploadImageRepository>(
        () => _i43.UploadImageRepoImpliment());
    gh.factory<_i44.AppoinmetsBloc>(() => _i44.AppoinmetsBloc(
          gh<_i21.GetAppoinmentsRepository>(),
          gh<_i5.CreateAppoinmentsRepository>(),
          gh<_i9.DeleteAppoinmentsRepository>(),
          gh<_i38.UpdateAppoinmentsRepository>(),
        ));
    gh.factory<_i45.ChatBloc>(
        () => _i45.ChatBloc(gh<_i13.FetchChatProfileRepository>()));
    gh.factory<_i46.ForgotBloc>(() => _i46.ForgotBloc(
          gh<_i19.ForgotRepository>(),
          gh<_i3.ChangePasswordRepository>(),
        ));
    gh.factory<_i47.LoginBloc>(() => _i47.LoginBloc(
          gh<_i30.LoginRepository>(),
          gh<_i32.OtpRepository>(),
        ));
    gh.factory<_i48.ProfileBloc>(() => _i48.ProfileBloc(
          gh<_i25.GetProfileRepository>(),
          gh<_i40.UpdateProfileRepository>(),
          gh<_i42.UploadImageRepository>(),
        ));
    gh.factory<_i49.SignupBloc>(
        () => _i49.SignupBloc(gh<_i36.SignupRepository>()));
    return this;
  }
}

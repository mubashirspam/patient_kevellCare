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
    as _i4;
import '../../features/appoiments/data/repositories/delete_appoiment_repository_impl.dart'
    as _i8;
import '../../features/appoiments/data/repositories/get_appoinments_repository_impl.dart'
    as _i20;
import '../../features/appoiments/data/repositories/update_appoiment_repository_impl.dart'
    as _i37;
import '../../features/appoiments/domain/repositories/create_appoinments_repository.dart'
    as _i3;
import '../../features/appoiments/domain/repositories/delete_appoinments_repository.dart'
    as _i7;
import '../../features/appoiments/domain/repositories/get_appoinments_repository.dart'
    as _i19;
import '../../features/appoiments/domain/repositories/update_appoinments_repository.dart'
    as _i36;
import '../../features/appoiments/presentation/bloc/appoinmets_bloc.dart'
    as _i42;
import '../../features/chat/data/repository/fetch_chat_profile_impliment.dart'
    as _i12;
import '../../features/chat/domain/repository/fetch_chat_profile_repository.dart'
    as _i11;
import '../../features/chat/presentation/bloc/chat_bloc.dart' as _i43;
import '../../features/forgot/data/repositories/forgot_repository_impl.dart'
    as _i18;
import '../../features/forgot/domain/repositories/forgot_repository.dart'
    as _i17;
import '../../features/forgot/presentation/bloc/forgot_bloc.dart' as _i44;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i22;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i21;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i27;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i29;
import '../../features/login/data/repositories/otp_repository_impl.dart'
    as _i31;
import '../../features/login/domain/repositories/login_repository.dart' as _i28;
import '../../features/login/domain/repositories/otp_repository.dart' as _i30;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i45;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i24;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i39;
import '../../features/profile/data/repositories/upload_image_repository_impl.dart'
    as _i41;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i23;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i38;
import '../../features/profile/domain/repositories/upload_image_repository.dart'
    as _i40;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i46;
import '../../features/rating/data/repositories/create%20_rating_repository_impl.dart'
    as _i6;
import '../../features/rating/data/repositories/edit_rating_repository_impl.dart'
    as _i10;
import '../../features/rating/data/repositories/get_rating_repository_impl.dart'
    as _i26;
import '../../features/rating/domain/repositories/create%20_rating_repository.dart'
    as _i5;
import '../../features/rating/domain/repositories/edit_rating_repository.dart'
    as _i9;
import '../../features/rating/domain/repositories/get_rating_repository.dart'
    as _i25;
import '../../features/rating/presentation/bloc/rating_bloc.dart' as _i32;
import '../../features/report/data/repository/fetch_report_general_impliment.dart'
    as _i14;
import '../../features/report/data/repository/fetch_report_impliment.dart'
    as _i16;
import '../../features/report/domain/repositories/fetch_report_general_repository.dart'
    as _i13;
import '../../features/report/domain/repositories/fetch_report_repository.dart'
    as _i15;
import '../../features/report/presentation/bloc/report_bloc.dart' as _i33;
import '../../features/signup/bloc/signup_bloc.dart' as _i47;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i35;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i34;

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
    gh.lazySingleton<_i5.CreateRatingRepository>(
        () => _i6.CreateRatingRepoImpliment());
    gh.lazySingleton<_i7.DeleteAppoinmentsRepository>(
        () => _i8.DeleteAppoinmentsRepoImpliment());
    gh.lazySingleton<_i9.EditRatingRepository>(
        () => _i10.EditRatingRepoImpliment());
    gh.lazySingleton<_i11.FetchChatProfileRepository>(
        () => _i12.FetchChatProfileRepoImpliment());
    gh.lazySingleton<_i13.FetchReportGeneraInfoRepository>(
        () => _i14.FetchReportGeneraInfoRepoImpliment());
    gh.lazySingleton<_i15.FetchReportRepository>(
        () => _i16.FetchReportRepoImpliment());
    gh.lazySingleton<_i17.ForgotRepository>(() => _i18.ForgotRepoImpliment());
    gh.lazySingleton<_i19.GetAppoinmentsRepository>(
        () => _i20.GetAppoinmentsRepoImpliment());
    gh.lazySingleton<_i21.GetAvailableDoctorRepository>(
        () => _i22.GetAvailableDoctorRepoImpliment());
    gh.lazySingleton<_i23.GetProfileRepository>(
        () => _i24.GetProfileRepoImpliment());
    gh.lazySingleton<_i25.GetRatingRepository>(
        () => _i26.GetRatingRepoImpliment());
    gh.factory<_i27.HomeBloc>(
        () => _i27.HomeBloc(gh<_i21.GetAvailableDoctorRepository>()));
    gh.lazySingleton<_i28.LoginRepository>(() => _i29.LoginRepoImpliment());
    gh.lazySingleton<_i30.OtpRepository>(() => _i31.OtpRepoImpliment());
    gh.factory<_i32.RatingBloc>(() => _i32.RatingBloc(
          gh<_i25.GetRatingRepository>(),
          gh<_i9.EditRatingRepository>(),
          gh<_i5.CreateRatingRepository>(),
        ));
    gh.factory<_i33.ReportBloc>(() => _i33.ReportBloc(
          gh<_i13.FetchReportGeneraInfoRepository>(),
          gh<_i15.FetchReportRepository>(),
        ));
    gh.lazySingleton<_i34.SignupRepository>(() => _i35.SignupRepoImpliment());
    gh.lazySingleton<_i36.UpdateAppoinmentsRepository>(
        () => _i37.UpdateAppoinmentRepoImpliment());
    gh.lazySingleton<_i38.UpdateProfileRepository>(
        () => _i39.UpdateProfileRepoImpliment());
    gh.lazySingleton<_i40.UploadImageRepository>(
        () => _i41.UploadImageRepoImpliment());
    gh.factory<_i42.AppoinmetsBloc>(() => _i42.AppoinmetsBloc(
          gh<_i19.GetAppoinmentsRepository>(),
          gh<_i3.CreateAppoinmentsRepository>(),
          gh<_i7.DeleteAppoinmentsRepository>(),
          gh<_i36.UpdateAppoinmentsRepository>(),
        ));
    gh.factory<_i43.ChatBloc>(
        () => _i43.ChatBloc(gh<_i11.FetchChatProfileRepository>()));
    gh.factory<_i44.ForgotBloc>(
        () => _i44.ForgotBloc(gh<_i17.ForgotRepository>()));
    gh.factory<_i45.LoginBloc>(() => _i45.LoginBloc(
          gh<_i28.LoginRepository>(),
          gh<_i30.OtpRepository>(),
        ));
    gh.factory<_i46.ProfileBloc>(() => _i46.ProfileBloc(
          gh<_i23.GetProfileRepository>(),
          gh<_i38.UpdateProfileRepository>(),
          gh<_i40.UploadImageRepository>(),
        ));
    gh.factory<_i47.SignupBloc>(
        () => _i47.SignupBloc(gh<_i34.SignupRepository>()));
    return this;
  }
}

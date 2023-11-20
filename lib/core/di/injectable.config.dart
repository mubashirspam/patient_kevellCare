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
    as _i6;
import '../../features/appoiments/data/repositories/get_appoinments_repository_impl.dart'
    as _i14;
import '../../features/appoiments/data/repositories/update_appoiment_repository_impl.dart'
    as _i32;
import '../../features/appoiments/domain/repositories/create_appoinments_repository.dart'
    as _i3;
import '../../features/appoiments/domain/repositories/delete_appoinments_repository.dart'
    as _i5;
import '../../features/appoiments/domain/repositories/get_appoinments_repository.dart'
    as _i13;
import '../../features/appoiments/domain/repositories/update_appoinments_repository.dart'
    as _i31;
import '../../features/appoiments/presentation/bloc/appoinmets_bloc.dart'
    as _i37;
import '../../features/chat/data/repository/fetch_chat_profile_impliment.dart'
    as _i8;
import '../../features/chat/domain/repository/fetch_chat_profile_repository.dart'
    as _i7;
import '../../features/chat/presentation/bloc/chat_bloc.dart' as _i38;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i16;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i15;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i21;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i23;
import '../../features/login/data/repositories/otp_repository_impl.dart'
    as _i25;
import '../../features/login/domain/repositories/login_repository.dart' as _i22;
import '../../features/login/domain/repositories/otp_repository.dart' as _i24;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i39;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i18;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i34;
import '../../features/profile/data/repositories/upload_image_repository_impl.dart'
    as _i36;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i17;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i33;
import '../../features/profile/domain/repositories/upload_image_repository.dart'
    as _i35;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i40;
import '../../features/rating/data/repositories/get_rating_repository_impl.dart'
    as _i20;
import '../../features/rating/data/repositories/rating_repository_impl.dart'
    as _i27;
import '../../features/rating/domain/repositories/get_rating_repository.dart'
    as _i19;
import '../../features/rating/domain/repositories/rating_repository.dart'
    as _i26;
import '../../features/rating/presentation/bloc/rating_bloc.dart' as _i41;
import '../../features/report/data/repository/fetch_report_general_impliment.dart'
    as _i10;
import '../../features/report/data/repository/fetch_report_impliment.dart'
    as _i12;
import '../../features/report/domain/repositories/fetch_report_general_repository.dart'
    as _i9;
import '../../features/report/domain/repositories/fetch_report_repository.dart'
    as _i11;
import '../../features/report/presentation/bloc/report_bloc.dart' as _i28;
import '../../features/signup/bloc/signup_bloc.dart' as _i42;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i30;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i29;

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
    gh.lazySingleton<_i7.FetchChatProfileRepository>(
        () => _i8.FetchChatProfileRepoImpliment());
    gh.lazySingleton<_i9.FetchReportGeneraInfoRepository>(
        () => _i10.FetchReportGeneraInfoRepoImpliment());
    gh.lazySingleton<_i11.FetchReportRepository>(
        () => _i12.FetchReportRepoImpliment());
    gh.lazySingleton<_i13.GetAppoinmentsRepository>(
        () => _i14.GetAppoinmentsRepoImpliment());
    gh.lazySingleton<_i15.GetAvailableDoctorRepository>(
        () => _i16.GetAvailableDoctorRepoImpliment());
    gh.lazySingleton<_i17.GetProfileRepository>(
        () => _i18.GetProfileRepoImpliment());
    gh.lazySingleton<_i19.GetRatingRepository>(
        () => _i20.GetRatingRepoImpliment());
    gh.factory<_i21.HomeBloc>(
        () => _i21.HomeBloc(gh<_i15.GetAvailableDoctorRepository>()));
    gh.lazySingleton<_i22.LoginRepository>(() => _i23.LoginRepoImpliment());
    gh.lazySingleton<_i24.OtpRepository>(() => _i25.OtpRepoImpliment());
    gh.lazySingleton<_i26.RatingRepository>(() => _i27.RatingRepoImpliment());
    gh.factory<_i28.ReportBloc>(() => _i28.ReportBloc(
          gh<_i9.FetchReportGeneraInfoRepository>(),
          gh<_i11.FetchReportRepository>(),
        ));
    gh.lazySingleton<_i29.SignupRepository>(() => _i30.SignupRepoImpliment());
    gh.lazySingleton<_i31.UpdateAppoinmentsRepository>(
        () => _i32.UpdateAppoinmentRepoImpliment());
    gh.lazySingleton<_i33.UpdateProfileRepository>(
        () => _i34.UpdateProfileRepoImpliment());
    gh.lazySingleton<_i35.UploadImageRepository>(
        () => _i36.UploadImageRepoImpliment());
    gh.factory<_i37.AppoinmetsBloc>(() => _i37.AppoinmetsBloc(
          gh<_i13.GetAppoinmentsRepository>(),
          gh<_i3.CreateAppoinmentsRepository>(),
          gh<_i5.DeleteAppoinmentsRepository>(),
          gh<_i31.UpdateAppoinmentsRepository>(),
        ));
    gh.factory<_i38.ChatBloc>(
        () => _i38.ChatBloc(gh<_i7.FetchChatProfileRepository>()));
    gh.factory<_i39.LoginBloc>(() => _i39.LoginBloc(
          gh<_i22.LoginRepository>(),
          gh<_i24.OtpRepository>(),
        ));
    gh.factory<_i40.ProfileBloc>(() => _i40.ProfileBloc(
          gh<_i17.GetProfileRepository>(),
          gh<_i33.UpdateProfileRepository>(),
          gh<_i35.UploadImageRepository>(),
        ));
    gh.factory<_i41.RatingBloc>(() => _i41.RatingBloc(
          gh<_i26.RatingRepository>(),
          gh<_i19.GetRatingRepository>(),
        ));
    gh.factory<_i42.SignupBloc>(
        () => _i42.SignupBloc(gh<_i29.SignupRepository>()));
    return this;
  }
}

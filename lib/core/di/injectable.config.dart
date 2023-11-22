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
    as _i16;
import '../../features/appoiments/data/repositories/update_appoiment_repository_impl.dart'
    as _i33;
import '../../features/appoiments/domain/repositories/create_appoinments_repository.dart'
    as _i3;
import '../../features/appoiments/domain/repositories/delete_appoinments_repository.dart'
    as _i5;
import '../../features/appoiments/domain/repositories/get_appoinments_repository.dart'
    as _i15;
import '../../features/appoiments/domain/repositories/update_appoinments_repository.dart'
    as _i32;
import '../../features/appoiments/presentation/bloc/appoinmets_bloc.dart'
    as _i38;
import '../../features/chat/data/repository/fetch_chat_profile_impliment.dart'
    as _i10;
import '../../features/chat/domain/repository/fetch_chat_profile_repository.dart'
    as _i9;
import '../../features/chat/presentation/bloc/chat_bloc.dart' as _i39;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i18;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i17;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i23;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i25;
import '../../features/login/data/repositories/otp_repository_impl.dart'
    as _i27;
import '../../features/login/domain/repositories/login_repository.dart' as _i24;
import '../../features/login/domain/repositories/otp_repository.dart' as _i26;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i40;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i20;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i35;
import '../../features/profile/data/repositories/upload_image_repository_impl.dart'
    as _i37;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i19;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i34;
import '../../features/profile/domain/repositories/upload_image_repository.dart'
    as _i36;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i41;
import '../../features/rating/data/repositories/edit_rating_repository_impl.dart'
    as _i8;
import '../../features/rating/data/repositories/get_rating_repository_impl.dart'
    as _i22;
import '../../features/rating/domain/repositories/edit_rating_repository.dart'
    as _i7;
import '../../features/rating/domain/repositories/get_rating_repository.dart'
    as _i21;
import '../../features/rating/presentation/bloc/rating_bloc.dart' as _i28;
import '../../features/report/data/repository/fetch_report_general_impliment.dart'
    as _i12;
import '../../features/report/data/repository/fetch_report_impliment.dart'
    as _i14;
import '../../features/report/domain/repositories/fetch_report_general_repository.dart'
    as _i11;
import '../../features/report/domain/repositories/fetch_report_repository.dart'
    as _i13;
import '../../features/report/presentation/bloc/report_bloc.dart' as _i29;
import '../../features/signup/bloc/signup_bloc.dart' as _i42;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i31;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i30;

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
    gh.lazySingleton<_i7.EditRatingRepository>(
        () => _i8.EditRatingRepoImpliment());
    gh.lazySingleton<_i9.FetchChatProfileRepository>(
        () => _i10.FetchChatProfileRepoImpliment());
    gh.lazySingleton<_i11.FetchReportGeneraInfoRepository>(
        () => _i12.FetchReportGeneraInfoRepoImpliment());
    gh.lazySingleton<_i13.FetchReportRepository>(
        () => _i14.FetchReportRepoImpliment());
    gh.lazySingleton<_i15.GetAppoinmentsRepository>(
        () => _i16.GetAppoinmentsRepoImpliment());
    gh.lazySingleton<_i17.GetAvailableDoctorRepository>(
        () => _i18.GetAvailableDoctorRepoImpliment());
    gh.lazySingleton<_i19.GetProfileRepository>(
        () => _i20.GetProfileRepoImpliment());
    gh.lazySingleton<_i21.GetRatingRepository>(
        () => _i22.GetRatingRepoImpliment());
    gh.factory<_i23.HomeBloc>(
        () => _i23.HomeBloc(gh<_i17.GetAvailableDoctorRepository>()));
    gh.lazySingleton<_i24.LoginRepository>(() => _i25.LoginRepoImpliment());
    gh.lazySingleton<_i26.OtpRepository>(() => _i27.OtpRepoImpliment());
    gh.factory<_i28.RatingBloc>(() => _i28.RatingBloc(
          gh<_i21.GetRatingRepository>(),
          gh<_i7.EditRatingRepository>(),
        ));
    gh.factory<_i29.ReportBloc>(() => _i29.ReportBloc(
          gh<_i11.FetchReportGeneraInfoRepository>(),
          gh<_i13.FetchReportRepository>(),
        ));
    gh.lazySingleton<_i30.SignupRepository>(() => _i31.SignupRepoImpliment());
    gh.lazySingleton<_i32.UpdateAppoinmentsRepository>(
        () => _i33.UpdateAppoinmentRepoImpliment());
    gh.lazySingleton<_i34.UpdateProfileRepository>(
        () => _i35.UpdateProfileRepoImpliment());
    gh.lazySingleton<_i36.UploadImageRepository>(
        () => _i37.UploadImageRepoImpliment());
    gh.factory<_i38.AppoinmetsBloc>(() => _i38.AppoinmetsBloc(
          gh<_i15.GetAppoinmentsRepository>(),
          gh<_i3.CreateAppoinmentsRepository>(),
          gh<_i5.DeleteAppoinmentsRepository>(),
          gh<_i32.UpdateAppoinmentsRepository>(),
        ));
    gh.factory<_i39.ChatBloc>(
        () => _i39.ChatBloc(gh<_i9.FetchChatProfileRepository>()));
    gh.factory<_i40.LoginBloc>(() => _i40.LoginBloc(
          gh<_i24.LoginRepository>(),
          gh<_i26.OtpRepository>(),
        ));
    gh.factory<_i41.ProfileBloc>(() => _i41.ProfileBloc(
          gh<_i19.GetProfileRepository>(),
          gh<_i34.UpdateProfileRepository>(),
          gh<_i36.UploadImageRepository>(),
        ));
    gh.factory<_i42.SignupBloc>(
        () => _i42.SignupBloc(gh<_i30.SignupRepository>()));
    return this;
  }
}

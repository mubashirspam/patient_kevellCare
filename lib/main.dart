import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:kevell_care/configure/value/secure_storage.dart';
import 'package:kevell_care/core/them/dark_theme.dart';
import 'package:kevell_care/core/them/light_theme.dart';
import 'package:kevell_care/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:kevell_care/features/forgot/presentation/bloc/forgot_bloc.dart';
import 'package:kevell_care/features/rating/presentation/bloc/rating_bloc.dart';
import 'package:kevell_care/pages/initialize/bloc/initialize_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'configure/route/routes.dart';
import 'configure/value/constant.dart';
import 'core/di/injectable.dart';
import 'features/appoiments/presentation/bloc/appoinmets_bloc.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/login/presentation/bloc/login_bloc.dart';
import 'features/profile/presentation/bloc/profile_bloc.dart';
import 'features/report/presentation/bloc/report_bloc.dart';
import 'features/signup/bloc/signup_bloc.dart';

import 'features/chat/data/model/chat_isar_model.dart';
import 'features/chat/data/model/message_isar_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // if (Platform.isAndroid) {
  //   await Firebase.initializeApp(
  //       options: DefaultFirebaseOptions.currentPlatform);
  //   await PushNotification().initNoticatin();
  // }

  await configureInjeactable();
  await getTokenFromSS(secureStoreKey).then((value) => log("Token : $value"));

  if (!kIsWeb) {
    Future<Directory?>? dir;
    dir = getApplicationSupportDirectory();
    final Directory? directory = await dir;
    await Isar.open(
      name: 'patientdb',
      [ChatIsarPersonModelSchema, MessageListIsarModelSchema],
      directory: '${directory?.path}',
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
        BlocProvider(create: (ctx) => getIt<SignupBloc>()),
        BlocProvider(create: (ctx) => getIt<LoginBloc>()),
        BlocProvider(create: (ctx) => getIt<AppoinmetsBloc>()),
        BlocProvider(create: (ctx) => InitializeBloc()),
        BlocProvider(create: (ctx) => getIt<ReportBloc>()),
        BlocProvider(create: (ctx) => getIt<ProfileBloc>()),
        BlocProvider(create: (ctx) => getIt<ChatBloc>()),
       BlocProvider(create: (ctx) => getIt<ForgotBloc>()),

        BlocProvider(create: (ctx) => getIt<RatingBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.light,
        initialRoute: "/dashboard",
        // home: const Initialize(),
        // navigatorKey: navigatorKey,
        routes: route,
      ),
    );
  }
}

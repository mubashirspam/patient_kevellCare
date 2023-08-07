import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/dark_theme.dart';
import 'package:kevell_care/core/them/light_theme.dart';
import 'package:kevell_care/pages/initialize/bloc/initialize_bloc.dart';
import 'package:kevell_care/pages/initialize/initialize.dart';

import 'configure/route/routes.dart';
import 'core/di/injectable.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/login/presentation/bloc/login_bloc.dart';
import 'features/signup/bloc/signup_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  await configureInjeactable();
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
        BlocProvider(create: (ctx) => InitializeBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.light, 
        // initialRoute: '/login-screen',
        // initialRoute: '/dashboard',
        home: const Initialize(),
        routes: route,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/dark_theme.dart';
import 'package:kevell_care/core/them/light_theme.dart';

import 'configure/route/routes.dart';
import 'core/di/injectable.dart';
import 'features/home/presentation/bloc/home_bloc.dart';

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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.light, // Set theme mode to follow system theme
        // initialRoute: '/login-screen',
        initialRoute: '/dashboard',
        routes: route,
      ),
    );
  }
}

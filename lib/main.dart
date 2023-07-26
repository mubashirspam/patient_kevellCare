import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/dark_theme.dart';
import 'package:kevell_care/core/them/light_theme.dart';

import 'configure/route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.light, // Set theme mode to follow system theme
      // initialRoute: '/login-screen',
      initialRoute: '/dashboard',
      routes: route,
    );
  }
}

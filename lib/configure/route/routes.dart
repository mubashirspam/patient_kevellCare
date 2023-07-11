import 'package:flutter/material.dart';
import 'package:kevell_care/pages/appoiment/presenation/book_new_appoiment_screen.dart';
import 'package:kevell_care/pages/dashborad/presentation/dashborad.dart';

import '../../pages/chat_screen/presentation/chating_screen.dart';
import '../../pages/login_scrren/presentation/login_screen.dart';
import '../../pages/profile/presenation/my_profile_screen.dart';
import '../../pages/signup_screen/presentation/signup_screen.dart';

final Map<String, Widget Function(BuildContext)> route = {
  LoginScreen.routeName: (ctx) => const LoginScreen(),
  SignupScreen.routeName: (ctx) => const SignupScreen(),
  Dashboard.routeName: (ctx) => const Dashboard(),
  MyProfileScreen.routeName: (ctx) => const MyProfileScreen(),
  BookNewAppointmentScreen.routeName: (ctx) => const BookNewAppointmentScreen(),
    ChatingScreen.routeName: (ctx) => const ChatingScreen(),
};

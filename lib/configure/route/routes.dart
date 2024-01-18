import 'package:flutter/material.dart';
import 'package:kevell_care/features/profile/presentation/pages/profile_screen.dart';
import 'package:kevell_care/pages/dashborad/presentation/dashborad.dart';
import 'package:kevell_care/pages/otp/otp_screen.dart';
import 'package:kevell_care/pages/patien_checkup/presentation/patient_checkup_screen.dart';
import '../../features/appoiments/presentation/pages/book_new_appoiment_screen.dart';
import '../../features/chat/presentation/pages/chating_screen.dart';
import '../../features/home/data/models/available_doctor_model.dart';
import '../../features/login/presentation/pages/login_screen.dart';
import '../../features/report/presentation/pages/report_scree.dart';
import '../../pages/signup_screen/presentation/signup_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final Map<String, Widget Function(BuildContext)> route = {
  LoginScreen.routeName: (ctx) => const LoginScreen(),
  SignupScreen.routeName: (ctx) => const SignupScreen(),
  Dashboard.routeName: (ctx) => const Dashboard(),
  // ProfileScreen.routeName: (ctx) => const ProfileScreen(),
  BookNewAppointmentScreen.routeName: (ctx) => BookNewAppointmentScreen(
      doctorData: ModalRoute.of(ctx)!.settings.arguments as HomeAvailableDoctorModelDatum),
  ChatingScreen.routeName: (ctx) => ChatingScreen(
      chatParameter: ModalRoute.of(ctx)!.settings.arguments as Map),
  PatientCheckupScreen.routeName: (ctx) => PatientCheckupScreen(
      checkupDetalis:
          ModalRoute.of(ctx)!.settings.arguments as Map<String, dynamic>),
  ReportScreen.routeName: (ctx) =>
      ReportScreen(appoimentId: ModalRoute.of(ctx)!.settings.arguments as int),
  OtpScreen.routeName: (ctx) => const OtpScreen(),
};



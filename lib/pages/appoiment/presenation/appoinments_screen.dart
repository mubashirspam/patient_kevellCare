
import 'package:flutter/material.dart';
import 'package:kevell_care/features/appoiments/presentation/upcoming_appoiments_list.dart';
import 'package:kevell_care/features/appoiments/presentation/past_appoiments_list.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
      
       UpcomingAppoimentList(),
       PastAppoimentList()
      ],
    );
  }
}


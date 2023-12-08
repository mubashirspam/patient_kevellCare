
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/features/appoiments/presentation/bloc/appoinmets_bloc.dart';
import 'package:kevell_care/features/appoiments/presentation/upcoming_appoiments_list.dart';
import 'package:kevell_care/features/appoiments/presentation/past_appoiments_list.dart';



class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppoinmetsBloc>().add(const AppoinmetsEvent.getAppoinments());
    });
    return const TabBarView(
      
      children: [
      
       UpcomingAppoimentList(),
       PastAppoimentList()
      ],
    );
  }
}


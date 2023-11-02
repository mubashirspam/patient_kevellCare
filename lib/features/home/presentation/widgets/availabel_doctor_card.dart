import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/avatar/active_avatar.dart';

import '../../../../core/helper/date.dart';
import '../../../../pages/appoiment/presenation/book_new_appoiment_screen.dart';
import '../../data/models/available_doctor_model.dart';

class AvailableDoctorCard extends StatelessWidget {
  final HomeAvailableDoctorModelDatum data;
  final int index;

  const AvailableDoctorCard({
    super.key,
    required this.data,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20).copyWith(top: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.theme.secondary,
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                const ActiveAvatar(),
                const SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.username!,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: 16)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text('Cardiologits',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 14)),
                    ),
                    Text(
                        'Availability -  ${extractTime(data.data!.first.starttime!)} to ${extractTime(data.data!.first.endtime!)}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  backgroundColor: context.theme.primary,
                  label: Text(
                    'Waiting patient - ${data.data!.length}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pushNamed(
                      BookNewAppointmentScreen.routeName,
                      arguments: index),
                  child: Text(
                    'Book Appointment',
                    style: TextStyle(
                      color: context.theme.primary,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

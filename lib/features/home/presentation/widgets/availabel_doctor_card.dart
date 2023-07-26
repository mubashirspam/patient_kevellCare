import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/avatar/active_avatar.dart';

import '../../../../pages/appoiment/presenation/book_new_appoiment_screen.dart';

class AvailableDoctorCard extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final String name;
  final String statusMessage;
  const AvailableDoctorCard({
    super.key,
    required this.imageUrl,
    required this.isActive,
    required this.name,
    required this.statusMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20).copyWith(bottom: 0),
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
                    Text('Dr. Antoni Shkraba',
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
                    Text('Availablity -  12.00 to 16.00',
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
                    'Waiting patient - 04',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(BookNewAppointmentScreen.routeName),
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

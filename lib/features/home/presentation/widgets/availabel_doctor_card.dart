import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/avatar/active_avatar.dart';

import '../../data/models/available_doctor_model.dart';

class AvailableDoctorCard extends StatelessWidget {
  final AvailableDoctor data;

  const AvailableDoctorCard({
    super.key,
    required this.data,
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
      child: Row(
        children: [
          ActiveAvatar(
            imageUrl: data.profileImagelink,
            imgRadius: 6,
            radius: 80,
            isActive: true,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr.${data.name}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 16)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(data.specialist ?? "Cardiologist",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 14)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(data.location ?? "Madurai",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 14)),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right,
          )
        ],
      ),
    );
  }
}

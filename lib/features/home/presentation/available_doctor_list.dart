import 'package:flutter/material.dart';
import 'package:kevell_care/features/home/presentation/widgets/availabel_doctor_card.dart';

class AvailableDoctorList extends StatelessWidget {
  const AvailableDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => AvailableDoctorCard(
                imageUrl: "",
                isActive: index.isEven ? true : false,
                name: "Johnny Greig",
                statusMessage: "General Checkup",
              ),
            ),
          );
  }
}
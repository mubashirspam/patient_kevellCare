import 'package:flutter/material.dart';
import 'package:kevell_care/features/history/presentation/health_info_widget.dart';
import 'package:kevell_care/features/history/presentation/patient_details_widget.dart';

class HealthDataWidget extends StatelessWidget {
  const HealthDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 20),
      children: const [
        PatientDetailsWidget(),
        HealthInfoWidget(),
      ],
    );
  }
}

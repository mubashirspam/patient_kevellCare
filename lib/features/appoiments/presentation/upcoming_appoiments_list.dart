import 'package:flutter/material.dart';
import 'package:kevell_care/features/appoiments/presentation/widgets/joinint_card.dart';
import 'package:kevell_care/pages/patien_checkup/presentation/patient_checkup_screen.dart';

import 'widgets/appoiments_card.dart';

class UpcomingAppoimentList extends StatelessWidget {
  const UpcomingAppoimentList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          JiningCard(
           onpress: () => Navigator.of(context).pushNamed(PatientCheckupScreen.routeName),
          ),
          SizedBox(
            child: Column(
              children: List.generate(
                  4,
                  (index) => const AppoimentCard(
                        isPast: false,
                      )),
            ),
          )
        ],
      ),
    );
  }
}

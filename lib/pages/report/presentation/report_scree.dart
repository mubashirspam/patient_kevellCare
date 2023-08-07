import 'package:flutter/material.dart';
import 'package:kevell_care/pages/report/presentation/widgets/report_appbar.dart';

import '../../../features/report/presentation/checkup_result_list.dart';
import '../../../features/report/presentation/prescription_reports.dart';

class ReportScreen extends StatelessWidget {
  static const routeName = '/report';
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReportScreenAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis pharetra suspendisse nisl, et interdum. Morbi fames et justo, mauris,et, scelerisque in aenean odio. Sed egestas quis pellentesque consectetur leo, proin est,",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 0),
              child: Text(
                "Checkup Result",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const CheckupReportResultList(),
            Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 0),
              child: Text(
                "Prescription Reports",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const PrescriptionReportsCard()
          ],
        ),
      ),
    );
  }
}

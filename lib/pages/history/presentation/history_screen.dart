import 'package:flutter/material.dart';
import 'package:kevell_care/features/history/presentation/health_data.dart';

import '../../../features/report/presentation/report_data.dart';
import '../widgets/tabbar_widgets.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TabBarWidget(),
              ),
              Expanded(
                child: SizedBox(
                  child: TabBarView(
                    children: <Widget>[
                      HealthDataWidget(),
                      ReportDataWidget(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

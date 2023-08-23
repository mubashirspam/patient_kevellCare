import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/features/history/presentation/health_data.dart';
import 'package:kevell_care/features/report/presentation/bloc/report_bloc.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';
import '../../../features/report/domain/entities/fetch_report_payload.dart';
import '../../../features/report/presentation/report_data.dart';
import '../widgets/tabbar_widgets.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await getTokenFromSS(drIdsecureStoreKey).then((value) {
        if (value != null) {
          int id = int.parse(value);

          context.read<ReportBloc>().add(ReportEvent.fetchReport(
              fetchReportPayload: FetchReportPayload(
                  startingDate:
                      DateTime.now().subtract(const Duration(days: 10)),
                  endingDate: DateTime.now(),
                  patientId: id)));
          context
              .read<ReportBloc>()
              .add(ReportEvent.fetchReportGeneralinfo(id: id));
        }
      });
    });
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

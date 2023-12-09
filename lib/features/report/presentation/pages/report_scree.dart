import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care/features/report/presentation/bloc/report_bloc.dart';
import 'package:kevell_care/features/widgets/loading_widget.dart';

import '../../../../configure/color/maian_color.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';

import '../../../checkup/presentation/widgets/ecg_graph.dart';
import '../../data/model/report_model.dart';
import '../../domain/entities/fetch_report_payload.dart';
import '../prescription_reports.dart';

import '../widget/report_appbar.dart';

class ReportScreen extends StatelessWidget {
  final int appoimentId;
  static const routeName = '/report';
  const ReportScreen({
    super.key,
    required this.appoimentId,
  });

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
    return Scaffold(
      appBar: const ReportScreenAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<ReportBloc, ReportState>(
          builder: (context, state) {
            if (state.isReportDataLoading) {
              return const LoadingWIdget();
            }
            if (state.hasReportData) {
              Datum? data;
              List<Datum> datas =
                  context.read<ReportBloc>().state.reportData!.data!;
              if (datas.isNotEmpty) {
                for (var datum in datas) {
                  if (datum.id == appoimentId) {
                    data = datum;
                  }
                }
              }
              if (data != null) {
                List<ECGData> ecgData = [];
                List<double> voltageValues;
                double widthEcg = 1;
                if (data.ecginfo!.isNotEmpty) {
                  String? value = data.ecginfo!.first.data?.content;
                  if (value != null && value.isNotEmpty) {
                    voltageValues = value
                        .split(',')
                        .map((e) => e.trim()) // Trim whitespace
                        .where((element) => element.isNotEmpty)
                        .map((e) {
                      try {
                        return double.parse(e);
                      } catch (_) {
                        return 0.0; // Handle non-numeric values or provide a suitable default
                      }
                    }).toList();
                    widthEcg = double.parse(voltageValues.length.toString());
                    for (int i = 0; i < voltageValues.length; i++) {
                      ecgData.add(ECGData(
                        time: i,
                        voltage: voltageValues[i],
                      ));
                    }
                  }
                }
                List<ECGData> grsData = [];
                List<double> grsvoltageValues;
                double widthGsr = 1;
                if (data.gsrinfo!.isNotEmpty) {
                  String? value = data.gsrinfo!.first.data?.content;
                  if (value != null && value.isNotEmpty) {
                    grsvoltageValues = value
                        .split(',')
                        .map((e) => e.trim()) // Trim whitespace
                        .where((element) => element.isNotEmpty)
                        .map((e) {
                      try {
                        return double.parse(e);
                      } catch (_) {
                        return 0.0; // Handle non-numeric values or provide a suitable default
                      }
                    }).toList();
                    widthGsr = double.parse(grsvoltageValues.length.toString());
                    for (int i = 0; i < grsvoltageValues.length; i++) {
                      grsData.add(ECGData(
                        time: i,
                        voltage: grsvoltageValues[i],
                      ));
                    }
                  }
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20).copyWith(top: 0),
                      child: Text(
                        "Checkup Result",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    if (data.temperatureinfo!.data != null)
                      ResultCard(
                        parameter: "Temprature",
                        value: data.temperatureinfo!.data!.content!,
                      ),
                    if (data.spO2Info!.data != null)
                      ResultCard(
                        parameter: "Spo2",
                        value: data.spO2Info!.data!.content!,
                      ),
                    if (data.spO2Info!.data != null)
                      ResultCard(
                        parameter: "Heart rate",
                        value: data.spO2Info!.data!.heartRate!,
                      ),
                    if (data.bpinfo!.data != null)
                      BpCard(
                        parameter: "Blood pressure",
                        value: data.bpinfo!.data!,
                      ),
                    if (data.ecginfo!.isNotEmpty)
                      EcgResultCard(
                        width: 2 * widthEcg,
                        colors: [
                          generateLightColor(),
                          generateLightColor(),
                        ],
                        ecgData: ecgData,
                        name: "ECG",
                      ),
                    if (data.gsrinfo!.isNotEmpty)
                      EcgResultCard(
                        width: 2 * widthGsr,
                        colors: [
                          generateLightColor(),
                          generateLightColor(),
                        ],
                        ecgData: grsData,
                        name: "GRS ",
                      ),
                    Padding(
                      padding: const EdgeInsets.all(20).copyWith(top: 0),
                      child: Text(
                        "Prescription Reports",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    data.prescription != null && data.prescription!.isNotEmpty
                        ? PrescriptionReportsCard(
                            data: data.prescription!,
                          )
                        : const SizedBox()
                  ],
                );
              } else {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
                  child: const Text(
                    "No Appoiment Found",
                  ),
                );
              }
            }
            return Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
              child: const Text(
                "No Appoiment Found",
              ),
            );
          },
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  final String parameter;
  final String value;
  const ResultCard({
    required this.parameter,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20).copyWith(top: 0),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              generateLightColor(),
              generateLightColor(),
            ],
          ),
        ),
        child: Row(
          children: [
            Text(
              parameter,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 16),
            ),
            const SizedBox(width: 10),
            Text(
              value,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 14, color: Colors.red),
            )
          ],
        ));
  }
}

class EcgResultCard extends StatelessWidget {
  const EcgResultCard(
      {super.key,
      required this.ecgData,
      required this.width,
      required this.name,
      required this.colors});

  final List<ECGData> ecgData;
  final String name;
  final List<Color> colors;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.all(20).copyWith(top: 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 16),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: width,
              child: ECGGraph(
                data: ecgData,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BpCard extends StatelessWidget {
  final String parameter;
  final BpinfoData value;
  const BpCard({
    required this.parameter,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20).copyWith(top: 0),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              generateLightColor(),
              generateLightColor(),
            ],
          ),
        ),
        child: Column(
          children: List.generate(
            3,
            (i) => Row(
              children: [
                Text(
                  i == 0
                      ? 'Systolic :'
                      : i == 1
                          ? 'Diastolic :'
                          : 'Pulse :',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 16),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: i == 1
                      ? const EdgeInsets.symmetric(vertical: 10)
                      : const EdgeInsets.all(0),
                  child: Text(
                    i == 0
                        ? "${value.bpsysValue} ( <120 )"
                        : i == 1
                            ? "${value.bpDiaValue} ( <80 )"
                            : "${value.bpPulseValue} ( 60 ~ 100 )",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontSize: 14, color: Colors.red),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

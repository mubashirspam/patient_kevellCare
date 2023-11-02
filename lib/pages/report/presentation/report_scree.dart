import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care/features/report/presentation/bloc/report_bloc.dart';
import 'package:kevell_care/features/widgets/loading_widget.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';
import '../../../core/helper/toast.dart';
import '../../../features/checkup/presentation/widgets/ecg_graph.dart';
import '../../../features/report/data/model/report_model.dart';
import '../../../features/report/domain/entities/fetch_report_payload.dart';
import '../../../features/report/presentation/prescription_reports.dart';

import 'widgets/report_appbar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

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
        child: BlocConsumer<ReportBloc, ReportState>(
          listener: (context, pdfState) async {
            if (pdfState.isPdfLoading) {
              showDialog(
                  barrierDismissible: false,
                  useSafeArea: true,
                  barrierColor: Colors.black.withOpacity(0.1),
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: context.theme.primary,
                      elevation: 0,
                      content: Row(
                        children: [
                          const SizedBox(width: 20),
                          const SizedBox(
                              height: 15,
                              width: 15,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              )),
                          const SizedBox(width: 20),
                          Text(
                            "Genarating Pdf...",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    );
                  });
            }
            if (pdfState.pdfError) {
              Navigator.of(context, rootNavigator: true).pop(context);

              Toast.showToast(
                  context: context, message: pdfState.pdfErrorMessage);
            }
            if (!pdfState.isPdfLoading &&
                pdfState.pdfCreated &&
                pdfState.pdf != null) {
              log("Prescription pdf created Sucsessfully");
              await Future.delayed(const Duration(milliseconds: 1000), () {
                Navigator.of(context, rootNavigator: true).pop(context);
              });
              final tempDir = await getTemporaryDirectory();
              await Share.shareFiles(['${tempDir.path}/prescription.pdf'],
                  text: 'Check out my PDF!');
            }
          },
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
                        ecgData: ecgData,
                        name: "ECG Graph",
                      ),
                    if (data.gsrinfo!.isNotEmpty)
                      EcgResultCard(
                        ecgData: grsData,
                        name: "GRS Graph",
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
              context.theme.secondary!,
              context.theme.primary!,
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
  const EcgResultCard({super.key, required this.ecgData, required this.name});

  final List<ECGData> ecgData;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.all(20).copyWith(top: 0),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            context.theme.secondary!,
            context.theme.primary!,
          ],
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
          ECGGraph(
            data: ecgData,
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
              context.theme.secondary!,
              context.theme.primary!,
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
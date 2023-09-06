import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import 'package:flutter/material.dart';
import 'package:kevell_care/features/report/presentation/bloc/report_bloc.dart';
import 'package:kevell_care/features/widgets/loading_widget.dart';

import '../../../core/helper/toast.dart';
import '../../../features/report/data/model/report_model.dart';
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
                    data.temperatureinfo!.data != null
                        ? ResultCard(
                            parameter: "Temprature",
                            value: data.temperatureinfo!.data!.content!,
                          )
                        : const SizedBox(),
                    data.spO2Info!.data != null
                        ? ResultCard(
                            parameter: "Spo2",
                            value: data.spO2Info!.data!.content!,
                          )
                        : const SizedBox(),
                    data.spO2Info!.data != null
                        ? ResultCard(
                            parameter: "Heart rate",
                            value: data.spO2Info!.data!.heartRate!,
                          )
                        : const SizedBox(),
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

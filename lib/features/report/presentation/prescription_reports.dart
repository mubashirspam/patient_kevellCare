import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/enums.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/report/presentation/bloc/report_bloc.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

import '../../../configure/color/maian_color.dart';
import '../../../core/helper/toast.dart';
import '../data/model/report_model.dart';

class PrescriptionReportsCard extends StatelessWidget {
  final List<Prescription> data;
  final Doctor doctorData;
    final   Patient patientData;
   final DateTime apppoinmetDate;

  const PrescriptionReportsCard({
    super.key,
    required this.data,
    required this.doctorData,
    required this.apppoinmetDate,
    required this.patientData
  });


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReportBloc, ReportState>(
      listener: (context, pdfState) async {
        if (pdfState.isPdfLoading) {
          // showDialog(
          //     barrierDismissible: false,
          //     useSafeArea: true,
          //     barrierColor: Colors.black.withOpacity(0.1),
          //     context: context,
          //     builder: (BuildContext context) {
          //       return AlertDialog(
          //         backgroundColor: context.theme.primary,
          //         elevation: 0,
          //         content: Row(
          //           children: [
          //             const SizedBox(width: 20),
          //             const SizedBox(
          //                 height: 15,
          //                 width: 15,
          //                 child: CircularProgressIndicator(
          //                   color: Colors.white,
          //                 )),
          //             const SizedBox(width: 20),
          //             Text(
          //               "Genarating Pdf...",
          //               style: Theme.of(context).textTheme.bodyMedium,
          //             )
          //           ],
          //         ),
          //       );
          //     });
        }
        if (pdfState.pdfError) {
          // Navigator.of(context, rootNavigator: true).pop(context);

          Toast.showToast(context: context, message: pdfState.pdfErrorMessage);
        }
        if (!pdfState.isPdfLoading &&
            pdfState.pdfCreated &&
            pdfState.pdf != null) {
          await getTemporaryDirectory().then((value) async {
            // Navigator.of(context, rootNavigator: true).pop(context);
            if (pdfState.action == PdfActions.share) {
              Share.shareFiles(['${value.path}/prescription.pdf'],
                  text: 'Check out my PDF!');
            }
            if (pdfState.action == PdfActions.download) {
              OpenFile.open('${value.path}/prescription.pdf');
            }
            // if (pdfState.action == PdfActions.view) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) =>
            //           const CreatePrescriptionScreen(checkupDetalis: {}),
            //     ),
            //   );
            // }
          });
        }
      },
      builder: (context, state) {
        return Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(15),
          margin:
              const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
          decoration: ShapeDecoration(
            color: generateLightColor(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Icon(
                        Icons.picture_as_pdf,
                        color: context.theme.textPrimary,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        "Prescription Reports",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  child: Row(
                    children: [
                      // Expanded(
                      //   child: TextButton(
                      //     onPressed: () {
                      //       //  context.read<ReportBloc>().add(
                      //       //       ReportEvent.genaratePdf(data: data),
                      //       //     );
                      //       // context.read<PrecriptionBloc>().add(
                      //       //       PrecriptionEvent.genaratePdf(
                      //       //           action: PdfActions.view,
                      //       //           data: state.prescriptionResult!),
                      //       //     );
                      //     },
                      //     style: TextButton.styleFrom(
                      //       backgroundColor: context.theme.backround,
                      //       foregroundColor: context.theme.primary,
                      //     ),
                      //     child: const Text("View"),
                      //   ),
                      // ),
                      // const SizedBox(width: 15),
                      Expanded(
                        child: TextButton(
                            onPressed: () {
                              context.read<ReportBloc>().add(
                                    ReportEvent.genaratePdf(
                                       doctorData: doctorData,
                                     apppoinmetDate:apppoinmetDate ,
                                    patientData: patientData,
                                        data: data,
                                        action: PdfActions.download),
                                  );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: context.theme.backround,
                              foregroundColor: context.theme.primary,
                            ),
                            child: Text(
                              "Download",
                              style:
                                  TextStyle(color: context.theme.textPrimary),
                            )),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            context.read<ReportBloc>().add(
                                  ReportEvent.genaratePdf(
                                    doctorData: doctorData,
                                     apppoinmetDate:apppoinmetDate ,
                                    patientData: patientData,
                                      action: PdfActions.share, data: data),
                                );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: context.theme.backround,
                            foregroundColor: context.theme.primary,
                          ),
                          child: Text(
                            "share",
                            style: TextStyle(color: context.theme.textPrimary),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

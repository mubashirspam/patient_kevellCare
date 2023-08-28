import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/report/presentation/bloc/report_bloc.dart';

import '../data/model/report_model.dart';

class PrescriptionReportsCard extends StatelessWidget {
  final List<Prescription> data;
  const PrescriptionReportsCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: ShapeDecoration(
        color: context.theme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.picture_as_pdf,
              color: context.theme.backround,
            ),
            const SizedBox(width: 15),
            Expanded(
                child: SizedBox(
              child: Column(
                children: [
                  Text(
                    "Prescription PDF_Adrianne Palicki_02 sartuday 2022, 02:00 - 04:15.pdf",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            context.read<ReportBloc>().add(
                                  ReportEvent.genaratePdf(data: data),
                                );
                          },
                          // onPressed: () => Navigator.of(context)
                          //     .pushNamed(PrescriptionScreen.routeName),
                          style: TextButton.styleFrom(
                            backgroundColor: context.theme.backround,
                            foregroundColor: context.theme.primary,
                          ),
                          child: const Text("View"),
                        ),
                        const SizedBox(width: 15),
                        TextButton(
                            onPressed: () {
                              context.read<ReportBloc>().add(
                                    ReportEvent.genaratePdf(data: data),
                                  );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: context.theme.backround,
                              foregroundColor: context.theme.primary,
                            ),
                            child: const Text("Download")),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

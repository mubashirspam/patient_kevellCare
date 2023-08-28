import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/features/appoiments/presentation/bloc/appoinmets_bloc.dart';
// import 'package:kevell_care/features/appoiments/presentation/widgets/joinint_card.dart';
import 'package:kevell_care/features/widgets/error_widget.dart';
import 'package:kevell_care/features/widgets/loading_widget.dart';
import 'package:kevell_care/pages/patien_checkup/presentation/patient_checkup_screen.dart';

import 'widgets/appoiments_card.dart';

class UpcomingAppoimentList extends StatelessWidget {
  const UpcomingAppoimentList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // JiningCard(
          //   onpress: () =>
          //       Navigator.of(context).pushNamed(PatientCheckupScreen.routeName),
          // ),
          BlocBuilder<AppoinmetsBloc, AppoinmetsState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const LoadingWIdget();
              }
              if (state.hasData) {
                if (state.appoimentData!.message!.upcomingdata!.isNotEmpty) {
                  return SizedBox(
                    child: Column(
                      children: List.generate(
                        state.appoimentData!.message!.upcomingdata!.length,
                        (index) => InkWell(
                          onTap: () {
                            if (state.appoimentData!.message!
                                .upcomingdata![index].appointmentstarttime!
                                .isBefore(DateTime.now())) {
                              Navigator.of(context).pushNamed(
                                PatientCheckupScreen.routeName,
                                arguments: {
                                  'patientID': state.appoimentData!.message!
                                      .upcomingdata![index].patientId,
                                  'doctorID': state.appoimentData!.message!
                                      .upcomingdata![index].doctornameid,
                                  'appointmentID': state.appoimentData!.message!
                                      .upcomingdata![index].id,
                                },
                              );
                            }
                          },
                          child: AppoimentCard(
                            data: state
                                .appoimentData!.message!.upcomingdata![index],
                            isPast: false,
                          ),
                        ),
                      ),
                    ),
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
              if (state.isError) {
                return const AppErrorWidget();
              }
              return const AppErrorWidget();
            },
          )
        ],
      ),
    );
  }
}

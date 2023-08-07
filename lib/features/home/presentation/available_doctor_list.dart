import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/features/home/presentation/widgets/availabel_doctor_card.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';
import '../../../core/helper/toast.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/loading_widget.dart';
import 'bloc/home_bloc.dart';

class AvailableDoctorList extends StatelessWidget {
  const AvailableDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) async {
        if (state.unauthorized) {
          Toast.showToast(
            context: context,
            message: "Unauthrized",
          );
          await deleteFromSS(secureStoreKey);
          // .then((value) => Navigator.of(context).pushAndRemoveUntil(
          //       MaterialPageRoute(
          //         builder: (context) => const Initialize(),
          //       ),
          //       (route) => false,
          //     ));
        } else if (state.isError) {
          // Toast.showToast(context: context, message: "Network Error");
        }
      },
      listenWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        if (state.isAvailableDoctorLoading) {
          return MultiSliver(children: const [
            Center(
              child: LoadingWIdget(),
            ),
          ]);
        }

        if (state.hasAvailableDoctorData) {
          if (state.availableDoctors!.data!.waitingPatients!.isEmpty) {
            return MultiSliver(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
                  child: const Text(
                    "No Appoiment Found",
                  ),
                )
              ],
            );
          } else {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => AvailableDoctorCard(
                  imageUrl: "",
                  isActive: index.isEven ? true : false,
                  name: "Johnny Greig",
                  statusMessage: "General Checkup",
                ),
              ),
            );
          }
        }
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 4,
            (context, index) => AvailableDoctorCard(
              imageUrl: "",
              isActive: index.isEven ? true : false,
              name: "Johnny Greig",
              statusMessage: "General Checkup",
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/loading_widget.dart';
import 'bloc/appoinmets_bloc.dart';
import 'widgets/appoiments_card.dart';

class PastAppoimentList extends StatelessWidget {
  const PastAppoimentList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppoinmetsBloc, AppoinmetsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingWIdget();
        }
        if (state.hasData) {
          if (state.appoimentData!.message!.past!.isNotEmpty) {
            return ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: state.appoimentData!.message!.past!.length,
              itemBuilder: (context, index) {
                return AppoimentCard(
                  data: state.appoimentData!.message!.past![index],
                  isPast: true,
                );
              },
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
    );
  }
}

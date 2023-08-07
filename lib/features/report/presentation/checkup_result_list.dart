import 'package:flutter/material.dart';

import 'package:kevell_care/features/report/presentation/widget/result_value_card.dart';

import '../../../configure/color/maian_color.dart';

class CheckupReportResultList extends StatelessWidget {
  const CheckupReportResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckupResultCard(name: "Body Temperature", onPress: () {}, children: [
          Text(
            "100.9 °F",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: MainConfigColorsDarkTheme.danger,
                ),
          ),
        ]),
        CheckupResultCard(name: "Sp02", onPress: () {}, children: [
          Text(
            "89",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: MainConfigColorsDarkTheme.danger,
                ),
          ),
        ]),
        CheckupResultCard(name: "Otoscop", onPress: () {}, children: [
          Row(
            children: List.generate(
              4,
              (index) => Container(
                margin: const EdgeInsets.only(right: 10),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://www.welchallyn.com/content/dam/welchallyn/images/students/Otoscopy-Pathologies/normal-tympanic-membrane.jpg",
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
        // Text("View All")
      ],
    );
  }
}

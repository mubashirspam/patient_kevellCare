import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../../core/helper/date.dart';
import '../../../home/presentation/bloc/home_bloc.dart';

class TimeSlotWidget extends StatelessWidget {
  final int activeIndex;
  final List<Map<String, dynamic>> timeList;
  const TimeSlotWidget(
      {super.key, required this.timeList, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    double tokenWidth = (MediaQuery.of(context).size.width - 70) / 3;
    List<Map<String, Color>> statusColorList = [
      {"booked": context.theme.primary!},
      {"selected": Colors.green},
      {"available": Colors.grey.shade200},
      {"canceled": Colors.red},
      {"onHold": Colors.amber},
    ];
    return Padding(
      padding: const EdgeInsets.all(20).copyWith(top: 0),
      child: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Choose a token",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 15),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: 15,
                spacing: 15,
                runAlignment: WrapAlignment.start,
                alignment: WrapAlignment.start,
                children: timeList.isEmpty
                    ? [
                        Center(
                          child: Text(
                            "Pleas select a date",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        )
                      ]
                    : List.generate(
                        timeList.length,
                        (i) => InkWell(
                              onTap: timeList[i]["isBooked"]
                                  ? () {}
                                  : () {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.pickTime(
                                                endTime: timeList[i]['endTime'],
                                                startTime: timeList[i]
                                                    ['startTime'],
                                                token: i + 1),
                                          );
                                    },
                              child: Container(
                                width: tokenWidth,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: timeList[i]["isBooked"]
                                      ? context.theme.primary!
                                      : i == activeIndex
                                          ? Colors.green
                                          : Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: context.theme.backround,
                                      ),
                                      child: Center(
                                        child: Text("${i + 1}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium!
                                                .copyWith(fontSize: 18)),
                                      ),
                                    ),
                                    Text(extractTime(timeList[i]['startTime']),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(color: Colors.black)),
                                  ],
                                ),
                              ),
                            )),
              ),
              const SizedBox(height: 15),
              SizedBox(
                child: Wrap(
                  spacing: 10,
                  children: List.generate(statusColorList.length, (index) {
                    var statusEntry = statusColorList[index].entries.first;
                    return SizedBox(
                      height: 25,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 10,
                            height: 10,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: statusEntry.value),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            statusEntry.key,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: context.theme.textGrey),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          )),
    );
  }
}

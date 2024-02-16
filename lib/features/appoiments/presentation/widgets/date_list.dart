import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kevell_care/core/them/custom_theme_extension.dart';


import '../../../../core/helper/date.dart';
import '../../../home/presentation/bloc/home_bloc.dart';

class DateListWidget extends StatelessWidget {
  final int activeIndex;
   
  final List<DateTime?> dateList;
  final List<int?> idList;
  const DateListWidget(
      {super.key, required this.dateList, required this.activeIndex, required this.idList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20).copyWith(top: 0),
      child: SizedBox(
          height: 140,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose a day . ${dateFormatToMonthYear(dateList.first!)}",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: dateList.length,
                  padding: const EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => InkWell(
                    onTap: () {
                      context.read<HomeBloc>().add(
                            HomeEvent.pickDate(
                              date: dateList[i] ?? DateTime.now(),
                              scheduleId: idList[i]??0
                            ),
                          );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      height: double.maxFinite,
                      width: 70,
                      margin: const EdgeInsets.all(15)
                          .copyWith(right: 0)
                          .copyWith(bottom: 0),
                      decoration: BoxDecoration(
                        color: i == activeIndex
                            ? context.theme.primary
                            : context.theme.backround,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            width: 0.5, color: context.theme.textGrey!),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dateList[i] != null
                                ? dateFormatToDay(dateList[i]!)
                                : "",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: i == activeIndex
                                        ? context.theme.backround
                                        : context.theme.textPrimary),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            dateList[i] != null
                                ? dateFormatToDayOfMonth(dateList[i]!)
                                : "",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    color: i == activeIndex
                                        ? context.theme.backround
                                        : context.theme.textPrimary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/calender/calnder.dart';

import '../../../core/helper/date.dart';

class DateField extends StatelessWidget {
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime selectedTime;
  final Color? color;
  final void Function(DateTime) onDateTimeChanged;
  const DateField(
      {super.key,
      required this.initialDate,
      required this.onDateTimeChanged,
      required this.selectedTime,
      required this.firstDate,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => showDialog(
          context: context,
          builder: (context) => CustomDatePickerDialog(
            initialDate: initialDate,
            firstDate: firstDate,
            lastDate: DateTime.now(),
            onDateTimeChanged: onDateTimeChanged,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          decoration: ShapeDecoration(
            color: color ??context.theme.secondary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 15,
                offset: Offset(4, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: context.theme.primary,
              ),
              const SizedBox(width: 15),
              Text(
                dateFormatToddmmyyyy(selectedTime),
                style: Theme.of(context).textTheme.titleLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}

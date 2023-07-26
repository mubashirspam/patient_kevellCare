import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../core/hleper/date_formater.dart';
import '../../../core/hleper/date_validater.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/calender/calnder.dart';
import '../../widgets/input_field/dropdown_field.dart';
import '../../widgets/input_field/input_field_widget.dart';

class BookNowWidget extends StatelessWidget {
  const BookNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      // padding: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Date and Time",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: context.theme.textPrimary),
              ),
              const SizedBox(height: 15),
              TextFieldWidget(
                hintText: "12/12/2023",
                inputFormatters: [DateInputFormatter()],
                keyboardType: TextInputType.datetime,
                validate: DateValidator.validateDate,
                suffixIcon: GestureDetector(
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => CustomDatePickerDialog(
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now(),
                      onDateTimeChanged: (onDateTimeChanged) {},
                    ),
                  ),
                  child: Icon(
                    Icons.calendar_month,
                    color: context.theme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: DropDownFiledWidet(
                      hintText: "From",
                      items: [],
                      onChanged: (ww) {},
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: DropDownFiledWidet(
                      hintText: "To",
                      items: [],
                      onChanged: (ww) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: DropDownFiledWidet(
                      hintText: "Location",
                      items: [],
                      onChanged: (ww) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                "Description",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: context.theme.textPrimary),
              ),
              const SizedBox(height: 15),
              TextFieldWidget(
                hintText: "Remark",
                keyboardType: TextInputType.name,
                maxLines: 9,
                validate: (j) {},
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextButtonWidget(
                      isLoading: false,
                      fgColor: context.theme.primary,
                      bgColor: context.theme.secondary,
                      onPressed: () {},
                      name: "Cancel",
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextButtonWidget(
                      isLoading: false,
                      onPressed: () {},
                      name: "Submit",
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


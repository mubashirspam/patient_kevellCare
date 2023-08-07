import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import '../../../configure/assets_manage/icons.dart';
import '../../widgets/calender/calnder.dart';
import '../../widgets/input_field/dropdown_field.dart';
import '../../widgets/input_field/input_field_widget.dart';

class HealthInfoWidget extends StatelessWidget {
  const HealthInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20).copyWith(top: 0),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(
                //   width: 50,
                //   child: SvgPicture.asset(AppIcons.graphIcon),
                // ),
                Text(
                  'Health Info',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 20,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "From",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "To",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: TextFieldWidget(
                    hintText: "01/04/2022",
                    keyboardType: TextInputType.datetime,
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
                        Icons.date_range_rounded,
                        color: context.theme.primary,
                      ),
                    ),
                    validate: (validate) {
                      return;
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextFieldWidget(
                    hintText: "01/04/2022",
                    keyboardType: TextInputType.datetime,
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
                        Icons.date_range_rounded,
                        color: context.theme.primary,
                      ),
                    ),
                    validate: (validate) {
                      return;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            DropDownFiledWidet(
                items: List.generate(
                  5,
                  (index) => DropdownMenuItem(
                    value: Text("'Body Temperature'"),
                    child: Text(
                      'Body Temperature',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                onChanged: (onChanged) {}),
          ],
        ),
      ),
    );
  }
}

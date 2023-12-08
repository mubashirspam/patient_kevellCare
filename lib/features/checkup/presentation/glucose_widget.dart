import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import 'package:lottie/lottie.dart';

import '../../../configure/assets_manage/lottie.dart';
import 'widgets/checkup_card.dart';

class GlucoseWidget extends StatelessWidget {
  final String glucose;
  final VoidCallback onpress;
  final bool isReading;

  const GlucoseWidget({
    super.key,
    required this.glucose,
    required this.onpress,
    required this.isReading,
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      // imageName: "imageName",
      name: "Glucose",
      onPress: onpress,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$glucose mg/DL",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: 18,
                    color: isReading ? context.theme.textPrimary : Colors.red,
                  ),
            ),
            isReading
                ? Lottie.asset(AppLottie.loading,
                    fit: BoxFit.contain, height: 60)
                : const SizedBox()
          ],
        ),
      ],
    );
  }
}

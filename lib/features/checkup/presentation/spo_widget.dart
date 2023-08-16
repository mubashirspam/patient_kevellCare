

import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'widgets/checkup_card.dart';

import 'package:lottie/lottie.dart';

import '../../../configure/assets_manage/lottie.dart';

class Spo2Widget extends StatelessWidget {
  final String spo2;
  final String heartBeat;
  final VoidCallback onpress;
  final bool isReading;

  const Spo2Widget({
    super.key,
    required this.spo2,
    required this.onpress,
    required this.isReading,
    required this.heartBeat,
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      // imageName: "imageName",
      name: "Spo2",
      onPress: onpress,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Spo2 : $spo2",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Heart Rate : $heartBeat",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                     fontSize: 18,
                    color: isReading ? context.theme.textPrimary : Colors.red,
                  ),
            ),
          ],
        )
      ],
    );
  }
}

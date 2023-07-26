

import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/checkup/presentation/widgets/checkup_card.dart';


import '../../../configure/assets_manage/lottie.dart';
import 'package:lottie/lottie.dart';


class TepamratureWidget extends StatelessWidget {
  final String temparature;
  final VoidCallback onpress;
  final bool isReading;

  const TepamratureWidget({
    super.key,
    required this.temparature,
    required this.onpress,
    required this.isReading,
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(

          name: "Body Temperature",
          onPress: onpress,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$temparature°F",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color:
                            isReading ? context.theme.textPrimary : Colors.red,
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

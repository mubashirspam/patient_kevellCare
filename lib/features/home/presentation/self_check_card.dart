import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kevell_care/configure/assets_manage/images.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

class SelfCheckCard extends StatelessWidget {
  const SelfCheckCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.all(20).copyWith(top: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: context.theme.secondary,
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Click here to Self \ncheck up",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 16),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.theme.backround,
                    foregroundColor: context.theme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    "Click Here",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color(0xffA76FEC),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(right: 30, child: SvgPicture.asset(AppImg.doctors)),
        ],
      ),
    );
  }
}

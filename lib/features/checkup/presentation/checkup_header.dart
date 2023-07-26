import 'package:flutter/material.dart';

import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/avatar/active_avatar.dart';

import '../../../configure/color/maian_color.dart';

class CheckupHeaderWidget extends StatelessWidget {
  const CheckupHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: context.theme.primary,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const ActiveAvatar(),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 5))
                    ],
                    color: context.theme.secondary),
                child: Center(
                  child: Icon(
                    Icons.message,
                    color: context.theme.primary,
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 5))
                    ],
                    borderRadius: BorderRadius.circular(100),
                    color: context.theme.secondary,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.video_call,
                      color: context.theme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

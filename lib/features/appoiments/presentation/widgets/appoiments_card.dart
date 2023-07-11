import 'package:flutter/material.dart';
import 'package:kevell_care/configure/color/maian_color.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

class AppoimentCard extends StatelessWidget {
  final bool isPast;

  const AppoimentCard({
    super.key,
    required this.isPast,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.theme.secondary,
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(20).copyWith(bottom: 0, top: 15),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.theme.primary,
            ),
            child: Center(
              child: Text(
                "04\nApr",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. Arun Kumar",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: context.theme.textPrimary,
                        ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "13.00-15.00",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: context.theme.textPrimary,
                        ),
                  ),
                ],
              ),
            ),
          ),
          isPast
              ? const SizedBox()
              : Icon(Icons.edit_square, color: context.theme.primary),
          const SizedBox(width: 15),
          const Icon(Icons.delete, color: MainConfigColorsDarkTheme.danger),
        ],
      ),
    );
  }
}

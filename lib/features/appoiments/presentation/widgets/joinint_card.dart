import 'package:flutter/material.dart';

import 'package:kevell_care/core/them/custom_theme_extension.dart';

class JiningCard extends StatelessWidget {
  final VoidCallback onpress;

  const JiningCard({
    super.key,
    required this.onpress,
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
                "5:00",
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
                    "Dr. Arun Kumar is waiting please join",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: context.theme.textPrimary,
                        ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: onpress,
            child: CircleAvatar(
              backgroundColor: context.theme.primary,
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  color: context.theme.backround,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

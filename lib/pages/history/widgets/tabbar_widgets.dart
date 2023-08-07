
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
              color: context.theme.primary!.withOpacity(0.5),
              blurRadius: 12,
              offset:const Offset(1, 2))
        ],
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            context.theme.primary!,
            context.theme.primary!.withOpacity(0.7),
          ],
        ),
      ),
      labelColor: context.theme.textPrimary!,
      unselectedLabelColor: context.theme.primary!,
      automaticIndicatorColorAdjustment: false,
      dragStartBehavior: DragStartBehavior.start,
      labelStyle: TextStyle(
          color: context.theme.textPrimary, fontWeight: FontWeight.bold),
      dividerColor: context.theme.primary!,
      indicatorColor: context.theme.primary!,
      unselectedLabelStyle: Theme.of(context).textTheme.titleLarge,
      indicatorWeight: 5,
      tabs: const <Tab>[
        Tab(
          child: Text(
            "Health",
          ),
        ),
        Tab(
          child: Text("Reports"),
        )
      ],
    );
  }
}
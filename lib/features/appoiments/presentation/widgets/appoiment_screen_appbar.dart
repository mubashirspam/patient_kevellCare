import 'package:flutter/material.dart';

import 'package:kevell_care/core/them/custom_theme_extension.dart';

class AppoinmentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppoinmentAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.primary,
      centerTitle: false,
      leading: const SizedBox(
        width: 1,
      ),
      title: Text(
        "Appointments",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      bottom: TabBar(
        padding: const EdgeInsets.all(20),
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: context.theme.primary),
        tabs: const [
          Tab(
            text: "Upcoming",
          ),
          Tab(
            text: "Past",
          ),
        ],
      ),
    );
  }
}

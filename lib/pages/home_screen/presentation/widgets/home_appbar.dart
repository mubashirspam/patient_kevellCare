import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../../configure/assets_manage/icons.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.primary,
      centerTitle: false,
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: CircleAvatar(
            backgroundColor: context.theme.secondary,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcons.notification,
                width: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
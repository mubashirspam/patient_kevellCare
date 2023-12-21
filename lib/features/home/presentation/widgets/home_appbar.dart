import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import '../../../widgets/avatar/active_avatar.dart';

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
      leadingWidth: 100,
      leading: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: ActiveAvatar(
          radius: 30,
          imageUrl: "",
          isActive: false,
        ),
      ),
      actions: [
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}

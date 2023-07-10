import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: const Text(
        'Chat',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: context.theme.secondary),
          child: Icon(
            Icons.search,
            color: context.theme.primary,
          ),
        ),
      ],
    );
  }
}

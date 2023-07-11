import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../features/chat/presentation/chating_list_widget.dart';
import '../../../features/widgets/avatar/active_avatar.dart';


class ChatingScreen extends StatelessWidget {
  static const routeName = '/chating-screen';
  const ChatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        leadingWidth: 30,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Icon(
              Icons.chevron_left,
              color: context.theme.primary,
            ),
          ),
        ),
        backgroundColor: context.theme.secondary,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              const ActiveAvatar(radius: 25),
              const SizedBox(width: 10),
              Text(
                "Dr.Eleanor Pena",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: context.theme.textPrimary),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
              color: context.theme.textPrimary,
            ),
          )
        ],
      ),
      body: const ChatingListWidget(),
    );
  }
}

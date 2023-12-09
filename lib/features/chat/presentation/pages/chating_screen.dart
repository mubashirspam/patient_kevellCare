import 'package:kevell_care/features/chat/data/model/chat_person_model.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/chat/presentation/chating_list_widget.dart';
import 'package:kevell_care/features/widgets/avatar/active_avatar.dart';

class ChatingScreen extends StatelessWidget {
  final Map chatParameter;
  static const routeName = '/chating-screen';

  const ChatingScreen({super.key, required this.chatParameter});

  @override
  Widget build(BuildContext context) {
    Result result = chatParameter["data"];
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
              ActiveAvatar(
                radius: 20,
                imageUrl: result.profileImagelink ??
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
              ),
              const SizedBox(width: 10),
              Text(
                result.username ?? "",
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
      body: SafeArea(child: ChatingListWidget(chatParameter: chatParameter)),
    );
  }
}

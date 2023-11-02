import 'dart:developer';

import 'package:kevell_care/features/chat/domain/db_helper.dart';
import 'package:kevell_care/features/widgets/error_widget.dart';
import 'package:kevell_care/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';

import 'package:kevell_care/features/chat/presentation/widgets/chat_person_card.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../pages/chat_screen/presentation/chating_screen.dart';
import '../data/model/chat_person_model.dart';
import '../domain/chat_service.dart';
import 'bloc/chat_bloc.dart';

class AllChatListWidget extends StatefulWidget {
  const AllChatListWidget({super.key});

  @override
  State<AllChatListWidget> createState() => _AllChatListWidgetState();
}

class _AllChatListWidgetState extends State<AllChatListWidget> {
  Map<int, List<Map<String, dynamic>>> sortedData = {};
  DatabaseHelper dbHelper = DatabaseHelper();

  @override
  void initState() {
    ChatService.instance.init(userId: 1003);

    ChatService.instance.socket!.on("get-users", (data) {
      log("get-users called ======= $data");
      if (mounted) {
        setState(() {});
      }
    });
    ChatService.instance.socket!.on("offline-messages", (response) {
      if (mounted) {
        setState(() {
          addReceivedMessages(response);
        });
      }
    });

    super.initState();
  }

  void addReceivedMessages(response) async {
    await dbHelper.open().then((value) async {
      log("db opened");
      for (var item in response) {
        final from = item["from"];
        final msg = item["msg"];
        final time = item["time"];
        if (!sortedData.containsKey(from)) {
          sortedData[from] = [];
        }
        sortedData[from]!.add({"msg": msg, "time": time});
        await dbHelper.insertMessage(from, msg, time,);
      }

      // Move the setState outside the loop to trigger a rebuild after processing all messages.
      if (mounted) {
        setState(() {
          log("offline-messages $sortedData");
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.hasData) {
          List<Result> profiles = state.result!.result ?? [];

          return ListView.builder(
              itemCount: profiles.length,
              itemBuilder: (context, index) {
                final id = profiles[index].id;
                int? count;
                if (sortedData.containsKey(id)) {
                  count = sortedData[id]!.length;
                }
                return GestureDetector(
                    onTap: () {
                      // setState(() => count == null);

                      Navigator.of(context).pushNamed(ChatingScreen.routeName,
                          arguments: {
                            'from': 1003,
                            'to': 1014,
                            'oldMessage': sortedData[id]
                          });
                    },
                    child: ChatPersonCard(
                      result: profiles[index],
                      count: count,
                    ));
              });
        }
        if (state.isError) {
          return const AppErrorWidget();
        }
        if (state.isLoading && !state.hasData) {
          return const Center(
            child: LoadingWIdget(),
          );
        }
        return const AppErrorWidget();
      },
    );
  }
}


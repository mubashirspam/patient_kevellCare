import 'dart:developer';

import 'package:kevell_care/features/chat/data/model/message_isar_model.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care/features/chat/presentation/widgets/message_widget.dart';
import '../../../core/helper/date.dart';
import '../data/model/chat_person_model.dart';
import '../domain/chat_service.dart';
import '../domain/message_isar_repo.dart';

class ChatingListWidget extends StatefulWidget {
  final Map chatParameter;
  const ChatingListWidget({super.key, required this.chatParameter});

  @override
  State<ChatingListWidget> createState() => _ChatingListWidgetState();
}

class _ChatingListWidgetState extends State<ChatingListWidget> {
  Result result = Result();
  @override
  void initState() {
    super.initState();
    result = widget.chatParameter["data"];
    log(result.id.toString());
    fetchAndDisplayMessages(result.id!);
    readChat();
  }

  final TextEditingController _textEditingController = TextEditingController();
  final List<MessageWidget> _messages = [];

  void readChat() {
    ChatService.instance.socket!
    .emit("offline-messages-receive", result.id);

    ChatService.instance.socket!.on("msg-recieve", (data) {
      log("msg-recieved $data");

      if (mounted) {
        log("msg-recieved $data");
        if (data['from'] == result.id) {
          setState(() {
            addReceivedMessages(data);
          });
        }
      }
    });
  }

  void sendMessage(String chat) {
    ChatService.instance.socket!.emit('send-msg', {
      "from": widget.chatParameter['from'],
      "to": result.id,
      "msg": chat,
      "name": "Mubashir"
    });
  }

  void _handleSubmitted(String text) async {
    if (text.isNotEmpty) {
      _textEditingController.clear();
 
      await MessageIsarRepo.instance.saveMessage(
          MessageIsar(message: text, time: DateTime.now(), isReceiving: false),
          result.id!,
          result.username!);
      sendMessage(text);

      if (mounted) {
        setState(() {
          _messages.insert(
              _messages.length,
              MessageWidget(
                isReciving: false,
                msg: text,
                time: '22:01',
              ));
        });
      }
    }
  }

  void fetchAndDisplayMessages(int userId) async {
    _messages.clear();
    final messages = await MessageIsarRepo.instance.fetchMessages(userId);
    log(messages.toString());
    setState(() {
      for (var message in messages) {
        final msg = message.message;
        final time = extractTime(message.time ?? DateTime.now());

        final isReciving = message.isReceiving;
        _messages.add(MessageWidget(
          isReciving: isReciving,
          msg: msg ?? '',
          time: time,
        ));
      }
    });
  }

  void addReceivedMessages(Map<String, dynamic> message) async {
    String msg = message["msg"];
    String time = extractTime(DateTime.parse(message["time"]));
    MessageIsarRepo.instance.saveMessage(
        MessageIsar(
            message: msg,
            time: DateTime.parse(message["time"]),
            isReceiving: true),
        result.id!,
        result.username!);
    _messages.add(MessageWidget(
      isReciving: true,
      msg: msg,
      time: time,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(20).copyWith(top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _messages,
                )),
          ),
        ),
        const Divider(height: 2.0),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _buildTextComposer(),
        ),
      ],
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).primaryColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textEditingController,
                onSubmitted: _handleSubmitted,
                decoration:
                    const InputDecoration.collapsed(hintText: 'Send a message'),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textEditingController.text),
            ),
          ],
        ),
      ),
    );
  }
}

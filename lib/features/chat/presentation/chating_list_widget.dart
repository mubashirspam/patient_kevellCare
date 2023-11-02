import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:kevell_care/features/chat/presentation/widgets/message_widget.dart';
import '../domain/chat_service.dart';

class ChatingListWidget extends StatefulWidget {
  final Map chatParameter;
  const ChatingListWidget({super.key, required this.chatParameter});

  @override
  State<ChatingListWidget> createState() => _ChatingListWidgetState();
}

class _ChatingListWidgetState extends State<ChatingListWidget> {
  @override
  void initState() {
    super.initState();

    readChat();
  }

  void readChat() {
    // ChatService.instance.socket!.emit("offline-messages-receive", 1004);

    ChatService.instance.socket!.on("msg-recieve", (data) {
      log("msg-recieved $data");
      if (mounted) {
        log("msg-recieved $data");
        setState(() {});
      }
    });
  }

  void sendMessage(String chat) {
    ChatService.instance.socket!.emit('send-msg', {
      "from": widget.chatParameter['from'],
      "to": widget.chatParameter['to'],
      "msg": chat,
      "name": "Mubashir"
    });
  }

  final TextEditingController _textEditingController = TextEditingController();
  final List<MessageWidget> _messages = [];



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

  void _handleSubmitted(String text) {
    if (text.isNotEmpty) {
      _textEditingController.clear();
      setState(() {
        sendMessage(text);
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

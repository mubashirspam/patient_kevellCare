import 'dart:developer';
import 'package:kevell_care/configure/api/endpoints.dart';
import 'package:socket_io_client/socket_io_client.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';



class ChatService {
  // instance of Socket
  Socket? socket;

  ChatService._();
  static final instance = ChatService._();

  init() async {
    final id = await getFromSS(drIdsecureStoreKey);
    int userId;
    if (id != null) {
      userId = int.parse(id);

      socket = io(
        ApiEndPoints.chatWebsocketUrl,
        OptionBuilder().setTransports(['websocket']).build(),
      );

      // listen onConnect event
      socket!.onConnect((data) {
        socket!.emit("new-user-add", userId);
        log("Chat Socket connected !id $userId");
      });

      // listen onConnectError event
      socket!.onConnectError((data) {
        log("Connect Error $data");
      });

      // connect socket
      socket!.connect();
    }

    // init Socket
  }
}

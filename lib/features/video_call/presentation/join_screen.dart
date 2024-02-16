import 'package:flutter/material.dart';

import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../widgets/avatar/active_avatar.dart';

class JoinOrCallWidget extends StatelessWidget {
  final dynamic incomingSDPOffer;
  final VoidCallback joinCall;
  final VoidCallback answerCall;
  final VoidCallback makeCall;
  final VoidCallback cutCall;
  const JoinOrCallWidget(
      {super.key,
      required this.answerCall,
      this.incomingSDPOffer,
      required this.joinCall,
      required this.makeCall,
      required this.cutCall});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: incomingSDPOffer != null
          ? Card(
              color: Colors.black,
              elevation: 0,
              child: ListTile(
                title: Text(
                  "Incoming Call from ${incomingSDPOffer["callerId"]}",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.call_end),
                      color: Colors.redAccent,
                      onPressed: cutCall,
                      // onPressed: () {
                      //   setState(() => incomingSDPOffer = null);
                      // },
                    ),
                    IconButton(
                      icon: const Icon(Icons.call),
                      color: Colors.greenAccent,
                      // onPressed: () {
                      //   _joinCall(
                      //     callerId: incomingSDPOffer["callerId"]!,
                      //     calleeId: widget.selfCallerId,
                      //     offer: incomingSDPOffer["sdpOffer"],
                      //   );
                      // },
                      onPressed: answerCall,
                    )
                  ],
                ),
              ),
            )
          : Row(
              children: [
                const ActiveAvatar(),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            offset: const Offset(0, 5))
                      ],
                      color: context.theme.secondary),
                  child: Center(
                    child: Icon(
                      Icons.message,
                      color: context.theme.primary,
                    ),
                  ),
                ),
                InkWell(
                  onTap: makeCall,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            offset: const Offset(0, 5))
                      ],
                      borderRadius: BorderRadius.circular(100),
                      color: context.theme.secondary,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.video_call,
                        color: context.theme.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

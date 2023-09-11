import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:kevell_care/core/them/custom_theme_extension.dart';


import '../../video_call/presentation/call_screen.dart';
import '../../video_call/presentation/join_screen.dart';
import '../../video_call/service/signaling_service.dart';

class CheckupHeaderWidget extends StatefulWidget {
  final String selfCallerId;
  final String paitentCallerId;
  const CheckupHeaderWidget({
    super.key,
    required this.paitentCallerId,
    required this.selfCallerId,
  });

  @override
  State<CheckupHeaderWidget> createState() => _CheckupHeaderWidgetState();
}

class _CheckupHeaderWidgetState extends State<CheckupHeaderWidget> {
  dynamic incomingSDPOffer;

  bool isVidecallStarted = false;

  String? callerId;
  String? calleeId;

  @override
  void initState() {
    super.initState();

    // listen for incoming video call
    SignallingService.instance.socket!.on("newCall", (data) {
      log("newCall");
      if (mounted) {
        // set SDP Offer of incoming call
        setState(() => incomingSDPOffer = data);
      }
    });
  }

  // join Call
  makeCall({
    required String jcallerId,
    required String jcalleeId,
    dynamic offer,
  }) {
    setState(() {
      isVidecallStarted = true;
      incomingSDPOffer = null;
      callerId = jcallerId;
      calleeId = jcalleeId;
    });
  }

  void answerCall() {
    setState(() {
      isVidecallStarted = true;

      callerId = null;
      calleeId = null;
    });
  }

  void cutCall() {
    setState(() {
      isVidecallStarted = false;
      incomingSDPOffer = null;
      callerId = null;
      calleeId = null;
    });
  }

  @override
  Widget build(BuildContext context) {
 return isVidecallStarted
        ? CallingWidget(
          cutCall: cutCall,
            callerId: callerId ?? incomingSDPOffer["callerId"]!,
            calleeId: calleeId ?? widget.selfCallerId,
            offer: incomingSDPOffer==null? null : incomingSDPOffer["sdpOffer"],
          )
        : HeaderWidget(
            answerCall: answerCall,
            makeCall:()=> makeCall(
                jcalleeId: widget.paitentCallerId,
                jcallerId: widget.selfCallerId),
            cutCall: cutCall,
            joinCall: () {},
            incomingSDPOffer: incomingSDPOffer,

          );
  }
}

class HeaderWidget extends StatelessWidget {
  final dynamic incomingSDPOffer;
  final VoidCallback joinCall;
  final VoidCallback answerCall;
  final VoidCallback makeCall;
  final VoidCallback cutCall;
  const HeaderWidget(
      {super.key,
      required this.answerCall,
      this.incomingSDPOffer,
      required this.joinCall,
      required this.makeCall,
      required this.cutCall});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: context.theme.primary,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
        JoinOrCallWidget(
              answerCall: answerCall,
              joinCall: joinCall,
              incomingSDPOffer:incomingSDPOffer ,
              makeCall: makeCall,
              cutCall: cutCall),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
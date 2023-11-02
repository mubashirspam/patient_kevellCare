import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as m;
import 'package:flutter/material.dart';
import 'package:kevell_care/features/checkup/presentation/temparature_widgtet.dart';
import 'package:kevell_care/pages/initialize/initialize.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../../configure/api/endpoints.dart';
import '../../../core/helper/alert.dart';
import '../../../core/helper/toast.dart';
import '../../../features/checkup/presentation/blood_pressure_widget.dart';
import '../../../features/checkup/presentation/ecg_widget.dart';
import '../../../features/checkup/presentation/gsr_widget.dart';
import '../../../features/checkup/presentation/postion_widget.dart';
import '../../../features/checkup/presentation/spo_widget.dart';
import '../../../features/checkup/presentation/unloack.dart';
import '../../../features/checkup/presentation/checkup_header.dart';
import '../../../features/checkup/presentation/widgets/ecg_graph.dart';
import '../../../features/video_call/service/signaling_service.dart';
import 'widgets/checkup_body.dart';

class PatientCheckupScreen extends StatefulWidget {
  static const routeName = '/patient-checup-screen';
  final Map<String, dynamic> checkupDetalis;
  const PatientCheckupScreen({
    super.key,
    required this.checkupDetalis,
  });

  @override
  State<PatientCheckupScreen> createState() => _PatientCheckupScreenState();
}

class _PatientCheckupScreenState extends State<PatientCheckupScreen> {
  int patientID = 0;
  int doctorID = 0;
  int appointmentID = 0;

  @override
  void initState() {
    patientID = widget.checkupDetalis['patientID'];
    doctorID = widget.checkupDetalis['doctorID'];
    appointmentID = widget.checkupDetalis['appointmentID'];

    SignallingService.instance.init(
      websocketUrl: ApiEndPoints.websocketUrl,
      selfCallerID: patientID.toString(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: InkWell(
      //     onTap: () => Navigator.pop(context),
      //     child: Container(
      //       margin: const EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: context.theme.secondary),
      //       child: Center(
      //         child: Icon(
      //           Icons.chevron_left,
      //           color: context.theme.primary,
      //         ),
      //       ),
      //     ),
      //   ),
      //   backgroundColor: context.theme.primary,
      //   centerTitle: false,
      // ),
      body: CustomScrollView(
        slivers: [
          SliverPinnedHeader(
            child: CheckupHeaderWidget(
              paitentCallerId: doctorID.toString(),
              selfCallerId: patientID.toString(),
            ),
          ),
          PatientCheckupSBody(
            checkupDetalis: widget.checkupDetalis,
          )
        ],
      ),
    );
  }
}

import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as m;

import 'package:kevell_care/features/checkup/presentation/ecg_widget.dart';
import 'package:kevell_care/features/checkup/presentation/gsr_widget.dart';
import 'package:kevell_care/features/checkup/presentation/temparature_widgtet.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../core/helper/alert.dart';
import '../../../../core/helper/toast.dart';
import '../../../../features/checkup/presentation/blood_pressure_widget.dart';
import '../../../../features/checkup/presentation/postion_widget.dart';
import '../../../../features/checkup/presentation/spo_widget.dart';
import '../../../../features/checkup/presentation/stethoscope_widget.dart';
import '../../../../features/checkup/presentation/unloack.dart';
import '../../../../features/checkup/presentation/widgets/ecg_graph.dart';
import '../../../initialize/initialize.dart';

class PatientCheckupSBody extends StatefulWidget {
  static const routeName = '/patient-checup-screen';

  final Map<String, dynamic> checkupDetalis;

  const PatientCheckupSBody({
    super.key,
    required this.checkupDetalis,
  });

  @override
  State<PatientCheckupSBody> createState() => _PatientCheckupSBodyState();
}

class _PatientCheckupSBodyState extends State<PatientCheckupSBody> {
  MqttServerClient? _client;

  bool isLoading = false;
  bool isConnected = false;
  bool isUnloacked = false;
  bool isUnloacking = false;

  bool isAnalysisended = false;

  String deviceId = "";

  bool tReading = false;
    bool stethescopReading = false;
  bool sp02Reading = false;
  bool ecgReading = false;
  bool gsrReading = false;
  bool postionReading = false;
  bool bpReading = false;

  bool tLoading = false;
  bool sp02Loading = false;
  bool ecgLoading = false;
  bool gsrLoading = false;
  bool postionLoading = false;
    bool stethescopLoding = false;
  bool bpLoading = false;

  Map<String, dynamic> dataMap = {};

  String temparature = "0.00";
  String sop2 = "0.00";
    String stethescopeAudio = "";
  String heartBeat = "0";
  String position = "";
  Map<String, String> bp = {"bpsys": "0", "bpdia": "0", "bpplus": "0"};

  int ecgIndex = 0;

  List<ECGData> ecgData = [];
  List<double> voltageValues = [];
  Map<String, String> ecgResults = {"Pulse": "", "R-R": "", "Result": ""};
  List<ECGData> gsrData = [];
  List<double> gsrVoltageValues = [];

  final String broker = "broker.hivemq.com";
  final int port = 1883;
  final String username = "";
  final String password = "";
  final String clientId =
      "kevellApp${m.Random().nextInt(99999)}_${m.Random().nextInt(8888)}";

  void initializeMQTTClient() {
    _client = MqttServerClient.withPort(broker, clientId, port);
    _client!.keepAlivePeriod = 20;
    _client!.onDisconnected = onDisconnected;
    _client!.secure = false;
    _client!.websocketProtocols = MqttClientConstants.protocolsSingleDefault;
    _client!.logging(on: true);
    _client!.onConnected = onConnected;
    _client!.onSubscribed = onSubscribed;
    _client!.onUnsubscribed = onUnsubscribed;

    final MqttConnectMessage connMess = MqttConnectMessage()
        .withWillTopic('willtopic')
        .withWillMessage('Will message')
        .startClean()
        .withWillQos(MqttQos.atLeastOnce);
    _client!.connectionMessage = connMess;
    log('EXAMPLE::kevell client connecting....');
  }

  Future<void> connect() async {
    try {
      setState(() => isLoading = true);
      await _client!.connect(username, password);
    } on NoConnectionException catch (e) {
      log('KevellCare :_client exception - $e');
      disconnect();
    } on SocketException catch (e) {
      log('KevellCare :socket exception - $e');
      disconnect();
    } finally {
      setState(() => isLoading = false);
    }
  }

  void disconnect() {
    log('Disconnected');
    _client!.disconnect();

    setState(() => isConnected = false);
  }

  void publishMy(Map payload, String to) {
    final MqttClientPayloadBuilder builder = MqttClientPayloadBuilder();
    builder.addString(json.encode(payload));

    _client!.publishMessage(to, MqttQos.exactlyOnce, builder.payload!);
  }

  void onSubscribed(String topic) {
    log('EXAMPLE::Subscription confirmed for topic $topic');
    setState(() => isConnected = true);
  }

  void onUnsubscribed(String? topic) {
    log('EXAMPLE::onUnsubscribed confirmed for topic $topic');

    setState(() {
      isConnected = false;
      isUnloacked = false;
    });
  }

  void onConnected() {
    _client!.updates!.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final MqttPublishMessage recMess = c[0].payload as MqttPublishMessage;
      setState(() {
        dataMap = json.decode(
            MqttPublishPayload.bytesToStringAsString(recMess.payload.message));
// ********************************** unloack **********************************//
// ********************************** unloack **********************************//

        log("dataMap['number'] === ${dataMap['number']}");

        // if (dataMap['state'] != "unlock") {
        //   if (dataMap["appointmentID"].toString() == "$appointmentID") {
        //     log("dataMap['data']['content'] === ${dataMap['data']['content']}");
        //   } else {
        //     log("bad appoinmnet idsdsffvdmdvnfvf");
        //   }
        // }

        if (dataMap['state'] == "error") {
          log("errrrrrrrrrrooooooooooorrrrrrr");
        } else if (dataMap['state'] == "unlock") {
          isUnloacking = false;
          isUnloacked = true;
          deviceId = dataMap['id'];

// ********************************** Temprature **********************************//
// ********************************** Temprature **********************************//
        } else if (dataMap['number'] == "2" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
          isUnloacked = true;
          tLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            temparature = dataMap['data']['content'].toString();
            tReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            tReading = false;
          }

          log(temparature);

// ********************************** Analysis Ended **********************************//
// ********************************** Analysis Ended **********************************//
        } else if (dataMap['command'] == "alert" &&
            dataMap['value'] == "end_ok") {
          log("Analysis Ended");
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => SuccessDialog(
                    message:
                        "Your appoinment successfully completed, thank you ",
                    onpress: () {
                      unSubscribe("KC_EC94CB6F61DC/app");
                      _client!.disconnect();

                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const Initialize(),
                          ),
                          (route) => false);
                    },
                  ));

          log("Analysis Ended");

// ********************************** position **********************************//
// ********************************** position **********************************//
        } else if (dataMap['number'] == "4" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
          isUnloacked = true;
          postionLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            if (dataMap['data']['content'].toString() == "1") {
              position = "Standing";
            }
            if (dataMap['data']['content'].toString() == "2") {
              position = "Lying";
            }
            if (dataMap['data']['content'].toString() == "3") {
              position = "Leftside-lying";
            }
            if (dataMap['data']['content'].toString() == "4") {
              position = "Rightside-Lying";
            }

            postionReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            postionReading = false;
          }

          log(position);

// ********************************** spo2 **********************************//
// ********************************** spo2 **********************************//
        } else if (dataMap['number'] == "3" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
          isUnloacked = true;
          sp02Loading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            sop2 = dataMap['data']['content'].toString();
            heartBeat = dataMap['data']['heart_rate'].toString();

            sp02Reading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            sp02Reading = false;
          }

          log(sop2);

// ********************************** bp **********************************//
// ********************************** bp **********************************//
//
        } else if (dataMap['number'].toString() == "5" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString().toString() ==
                "$appointmentID") {
          isUnloacked = true;
          bpLoading = false;

          if (dataMap['data']['type'] == "reading") {
            bp["bpsys"] = dataMap['data']['BpsysValue'].toString();
            bp["bpdia"] = dataMap['data']['BpDiaValue'].toString();
            bp["bpplus"] = dataMap['data']['BpPulseValue'].toString();

            bpReading = true;
          }
          if (dataMap['data']['type'] == "result") {
            bp["bpsys"] = dataMap['data']['BpsysValue'].toString();
            bp["bpdia"] = dataMap['data']['BpDiaValue'].toString();
            bp["bpplus"] = dataMap['data']['BpPulseValue'].toString();
            bpReading = false;
          }

          log(bp.toString());

// ********************************** ecg **********************************//
// ********************************** ecg **********************************//
        } else if (dataMap['number'] == "6" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
          isUnloacked = true;
          ecgLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            ecgResults = {
              'Pulse': dataMap['data']['pulse'].toString(),
              'R-R': dataMap['data']['rr'].toString(),
              'Result': dataMap['data']['status'].toString()
            };

            voltageValues.clear();
            ecgData.clear();

            voltageValues = dataMap['data']['content']
                .toString()
                .split(',')
                .where((element) => element.isNotEmpty)
                .map((e) => double.parse(e))
                .toList();
            for (int i = 0; i < voltageValues.length; i++) {
              ecgIndex++;

              ecgData.add(ECGData(
                time: ecgIndex,
                voltage: voltageValues[i],
              ));
            }

            ecgReading = true;
          }

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            ecgReading = false;
          }
        } else if (dataMap['number'] == "8" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
          isUnloacked = true;
          gsrLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            // ecg = dataMap['data']['content'].toString();
            gsrVoltageValues.clear();
            gsrData.clear();

            gsrVoltageValues = dataMap['data']['content']
                .toString()
                .split(',')
                .where((element) => element.isNotEmpty)
                .map((e) => double.parse(e))
                .toList();
            for (int i = 0; i < gsrVoltageValues.length; i++) {
              ecgIndex++;

              gsrData.add(ECGData(
                time: ecgIndex,
                voltage: gsrVoltageValues[i],
              ));
            }

            gsrReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            gsrReading = false;
          }
        } else {
          isUnloacking = false;
        }
      });
    });
  }

  void subScribeTo(String topic) {
    _client!.subscribe(topic, MqttQos.atLeastOnce);
  }

  /// Unsubscribe from a topic
  void unSubscribe(String topic) {
    _client!.unsubscribe(topic);
  }

  void onDisconnected() {
    log('EXAMPLE::OnDisconnected client callback - Client disconnection');
    if (_client!.connectionStatus!.returnCode ==
        MqttConnectReturnCode.noneSpecified) {
      log('EXAMPLE::OnDisconnected callback is solicited, this is correct');
    }
  }

  Timer? _timer;
  int _secondsRemaining = 10;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_secondsRemaining < 1) {
            timer.cancel();
            // Timer is done, add any desired actions here.
            isUnloacking = false;
          } else {
            _secondsRemaining--;
          }
        },
      ),
    );
  }

  int patientID = 0;
  int doctorID = 0;
  int appointmentID = 0;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
   patientID = widget.checkupDetalis['patientID'];
    doctorID = widget.checkupDetalis['doctorID'];
    appointmentID = widget.checkupDetalis['appointmentID'];

    initializeMQTTClient();
    connect().then((value) => subScribeTo("KC_EC94CB6F61DC/app"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSliver(children: [ UnloackWidget(
            isDoctorDriven: true,
            isConnected: isConnected,
            isUnloacking: isUnloacking,
            isLoading: isLoading,
            isUnloacked: isUnloacked,
            onpressed: () async {
              initializeMQTTClient();
              await connect()
                  .then((value) => subScribeTo("KC_EC94CB6F61DC/app"));
            },
            onChanged: (_) {},
          ),
          TepamratureWidget(
            isReading: tReading,
            onpress: isUnloacked
                ? () {
                    publishMy({
                      "id": "KC_EC94CB6F61DC",
                      "patientID": patientID,
                      "doctorID": doctorID,
                      "appointmentID": appointmentID,
                      "type": "Doctor",
                      "command": "device",
                      "number": 2,
                      "date": DateTime.now().millisecondsSinceEpoch
                    }, "KC_EC94CB6F61DC/device");
                  }
                : () => Toast.showToast(
                    context: context, message: "Please Unlock"),
            temparature: temparature,
          ),
           StethoscopeWidget(

        isReading: stethescopReading,
       
        onpress: isUnloacked
            ? () {
                setState(() => stethescopLoding = true);
                publishMy({
                  "id": "KC_EC94CB6F61DC",
                  "patientID": patientID,
                  "doctorID": doctorID,
                  "appointmentID": appointmentID,
                  "type": "Doctor",
                  "command": "device",
                  "number": 11,
                  "date": DateTime.now().millisecondsSinceEpoch
                }, "KC_EC94CB6F61DC/device");
              }
            : () => Toast.showToast(context: context, message: "Please Unlock"),
        audio: stethescopeAudio,
      ),
          Spo2Widget(
            isReading: sp02Reading,
            heartBeat: heartBeat,
            spo2: sop2,
            onpress: isUnloacked
                ? () {
                    publishMy({
                      "id": "KC_EC94CB6F61DC",
                      "patientID": patientID,
                      "doctorID": doctorID,
                      "appointmentID": appointmentID,
                      "type": "Doctor",
                      "command": "device",
                      "number": 3,
                      "date": DateTime.now().millisecondsSinceEpoch
                    }, "KC_EC94CB6F61DC/device");
                  }
                : () => Toast.showToast(
                    context: context, message: "Please Unlock"),
          ),
          BloodPressureWidget(
              onpress: isUnloacked
                  ? () {
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": patientID,
                        "doctorID": doctorID,
                        "appointmentID": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 5,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
              bp: bp["bpsys"]!,
              isReading: bpReading,
              bpdia: bp["bpdia"]!,
              bpplus: bp["bpplus"]!),
          EcgWidget(
            data: ecgData,
            isReading: ecgReading,
            
            onpress: isUnloacked
                ? () {
                    publishMy({
                      "id": "KC_EC94CB6F61DC",
                      "patientID": patientID,
                      "doctorID": doctorID,
                      "appointmentID": appointmentID,
                      "type": "Doctor",
                      "command": "device",
                      "number": 6,
                      "date": DateTime.now().millisecondsSinceEpoch
                    }, "KC_EC94CB6F61DC/device");
                  }
                : () => Toast.showToast(
                    context: context, message: "Please Unlock"),
            ecgResults: ecgResults,
          ),
          GSRgWidget(
            isReading: gsrReading,
            data: gsrData,
            onpress: isUnloacked
                ? () {
                    publishMy({
                      "id": "KC_EC94CB6F61DC",
                      "patientID": patientID,
                      "doctorID": doctorID,
                      "appointmentID": appointmentID,
                      "type": "Doctor",
                      "command": "device",
                      "number": 8,
                      "date": DateTime.now().millisecondsSinceEpoch
                    }, "KC_EC94CB6F61DC/device");
                  }
                : () => Toast.showToast(
                    context: context, message: "Please Unlock"),
            gsr: temparature,
          ),
          PositionWidget(
            isReading: tReading,
            onpress: isUnloacked
                ? () {
                    publishMy({
                      "id": "KC_EC94CB6F61DC",
                      "patientID": patientID,
                      "doctorID": doctorID,
                      "appointmentID": appointmentID,
                      "type": "Doctor",
                      "command": "device",
                      "number": 4,
                      "date": DateTime.now().millisecondsSinceEpoch
                    }, "KC_EC94CB6F61DC/device");
                  }
                : () => Toast.showToast(
                    context: context, message: "Please Unlock"),
            position: position,
          ),]);
  }
}

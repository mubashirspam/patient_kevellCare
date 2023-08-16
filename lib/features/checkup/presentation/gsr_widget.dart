import 'widgets/checkup_card.dart';

import 'package:flutter/material.dart';

import 'widgets/ecg_graph.dart';

class GSRgWidget extends StatelessWidget {
  final String gsr;
  final VoidCallback onpress;
  final bool isReading;
  final List<ECGData> data;

  const GSRgWidget({
    super.key,
    required this.gsr,
    required this.onpress,
    required this.isReading,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      // imageName: "imageName",
      name: "GSR",
      onPress: onpress,
      children: [
        SizedBox(
          height: 150,
          child: ECGGraph(
            data: data,
          ),
        ),
      ],
    );
  }
}

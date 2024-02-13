import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ECGGraph extends StatelessWidget {
  final List<ECGData> data;
  const ECGGraph({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      primaryYAxis: const NumericAxis(),
      backgroundColor: Colors.transparent,
      borderWidth: 1,
      enableAxisAnimation: true,

      series: <CartesianSeries>[
        LineSeries<ECGData, int>(
          dataSource: data,
          xValueMapper: (ECGData data, _) => data.time,
          yValueMapper: (ECGData data, _) => data.voltage,
        ),
      ],
    );
  }
}

class ECGData {
  final int time;
  final double voltage;

  ECGData({
    required this.time,
    required this.voltage,
  });
}

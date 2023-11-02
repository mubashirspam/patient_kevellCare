import 'package:flutter/material.dart';


import 'widgets/checkup_card.dart';
import 'widgets/ecg_graph.dart';

class EcgWidget extends StatelessWidget {
  final VoidCallback onpress;

  final bool isReading;
  final List<ECGData> data;
  
  final Map<String, String> ecgResults;

  const EcgWidget({
    super.key,
    required this.onpress,
    required this.isReading,
    required this.data,
    required this.ecgResults,
   
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
     
      // imageName: "imageName",
      name: "ECG",
      onPress: onpress,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            ecgResults.length,
            (idx) => Text.rich(
              TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 16),
                text: "${ecgResults.keys.elementAt(idx)} : ",
                children: [
                  TextSpan(
                    text: ecgResults[key],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 170,
          child: ECGGraph(
            data: data,
          ),
        ),
      ],
    );
  }
}

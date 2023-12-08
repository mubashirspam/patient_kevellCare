// import 'package:flutter/material.dart';
// import 'package:kevell_care/core/them/custom_theme_extension.dart';



// import '../data/model/report_model.dart' as report;
// import 'widget/prescription_item_widget.dart';

// class PrescriptionScreen extends StatelessWidget {
//   final List<report.Prescription> prescriptions;
//   const PrescriptionScreen({
//     super.key,
//     required this.prescriptions,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: InkWell(
//           onTap: () => Navigator.pop(context),
//           child: Container(
//             margin: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: context.theme.secondary),
//             child: Center(
//               child: Icon(
//                 Icons.chevron_left,
//                 color: context.theme.primary,
//               ),
//             ),
//           ),
//         ),
//         backgroundColor: context.theme.backround,
//         centerTitle: false,
//         title: Text(
//           "Prescriptions",
//           style: Theme.of(context).textTheme.headlineLarge,
//         ),
//       ),
//       body: ListView.builder(
//         shrinkWrap: true,
//         padding: const EdgeInsets.all(20).copyWith(top: 0),
//         itemCount: prescriptions.length,
//         itemBuilder: (context, index) => InkWell(
//           onTap: () => Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => PrescriptionDetials(
//               prescription: prescriptions[index],
//             ),
//           )),
//           child: PrescriptionItemWidget(
//             prescription: prescriptions[index],
//           ),
//         ),
//       ),
//     );
//   }
// }

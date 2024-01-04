// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class OtpFiled extends StatefulWidget {
//   final Function(String) onOtpEntered;
//   const OtpFiled({super.key, required this.onOtpEntered});

//   @override
//   State<OtpFiled> createState() => _OtpFiledState();
// }

// class _OtpFiledState extends State<OtpFiled> {
//   List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());
//   List<TextEditingController> controllers =
//       List.generate(4, (index) => TextEditingController());

//   @override
//   void dispose() {
//     for (var controller in controllers) {
//       controller.dispose();
//     }
//     for (var focusNode in focusNodes) {
//       focusNode.dispose();
//     }
//     super.dispose();
//   }

//   void _onTextChanged(int index, String newText) {
//     if (newText.isNotEmpty) {
//       if (index < 3) {
//         FocusScope.of(context).requestFocus(focusNodes[index + 1]);
//       } else {
//         final otpValue =
//             controllers.map((controller) => controller.text).join();
//         widget.onOtpEntered(otpValue);
//       }
//     } else {
//       if (index > 0) {
//         widget.onOtpEntered('');
//         controllers[index].clear();
//         FocusScope.of(context).requestFocus(focusNodes[index - 1]);
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: List.generate(
//         4,
//         (index) => Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: TextFormField(
//               controller: controllers[index],
//               onChanged: (newText) => _onTextChanged(index, newText),
//               focusNode: focusNodes[index],
//               inputFormatters: [
//                 FilteringTextInputFormatter.allow(RegExp("[0-9 ]")),
//                 LengthLimitingTextInputFormatter(1),
//               ],
//               keyboardType: TextInputType.number,
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

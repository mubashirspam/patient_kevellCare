// import 'package:flutter/material.dart';
// import 'package:kevell_care/core/helper/validater.dart';
// import 'package:kevell_care/core/them/custom_theme_extension.dart';
// import 'package:kevell_care/features/forgot/presentation/pages/otp.dart';
// import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';
// import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';
// import 'package:kevell_care/pages/otp/otp_screen.dart';

// class ResetPassword extends StatelessWidget {
//   static const routeName = '/reset-screen';

//   const ResetPassword({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
// TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//     String? validateEmailOrMobile(String? value) {
//       if (value == null || value.isEmpty) {
//         return 'Please enter an email address or mobile number';
//       } else if (regex.hasMatch(value)) {
//         if (!regexMobile.hasMatch(value)) {
//           return 'Please enter a valid mobile number or email';
//         }
//       } else if (regexMobile.hasMatch(value)) {
//         if (!regex.hasMatch(value)) {
//           return 'Please enter a valid email or mobile number';
//         }
//       } else {
//         return 'Please enter a valid email or mobile number';
//       }
//       return null; 
//     }
  
//      void onSubmit() {
//       if (formKey.currentState != null && formKey.currentState!.validate()) {
//         print('Valid input! Ready to submit.');
        
//       }
//     }

//     return Scaffold(
//       backgroundColor: context.theme.primary,
//       appBar: AppBar(
//         backgroundColor: context.theme.primary,
//         leading: IconButton(
//           icon:const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: const Text(
//           'New Credentials',
//           style: TextStyle(
//             fontSize: 30,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
      
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(20),
//         child: Center(
//           child: SafeArea(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                  const SizedBox(height: 50),
//                 Center(
//                   child: const Text(
//                     "Your identity has been Verified \n set your new password",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight:FontWeight.bold
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 50),
//                  Text("Password",
//                 style: Theme.of(context)
//                     .textTheme
//                     .titleLarge!
//                     .copyWith(color: Colors.white)),
//             const SizedBox(height: 10),
//               TextFieldWidget(
//               maxLines: 1,
//               obscureText: true,
//               textEditingController: passwordController,
//               onChanged: (value) {},
//               hintText: "Choose a password",
//               keyboardType: TextInputType.visiblePassword,
//               validate: (value) {
//                 if (value == null || value.isEmpty) {
//                   return "Please enter a password";
//                 } else if (value.length < 8) {
//                   return "Password must contain at least 8 characters";
//                 }
//                 return null; // Return null if validation succeeds
//               },
//             ),
//             const SizedBox(height: 20),
//             Text("Confirm Password",
//                 style: Theme.of(context)
//                     .textTheme
//                     .titleLarge!
//                     .copyWith(color: Colors.white)),
//             const SizedBox(height: 10),
//             TextFieldWidget(
//               maxLines: 1,
//               obscureText: true,
//               textEditingController: confirmPasswordController,
//               onChanged: (value) {},
//               hintText: "Choose a password",
//               keyboardType: TextInputType.visiblePassword,
//               validate: (value) {
//                 if (value == null || value.isEmpty) {
//                   return "Please enter a password";
//                 } else if (value != passwordController.value.text) {
//                   return "Password must same as above";
//                 }
//                 return null; // Return null if validation succeeds
//               },
//             ),
//                 const SizedBox(height: 30,),
//                 // GestureDetector(
                

//                   // child:
//                    TextButtonWidget(
//                      bgColor: context.theme.backround,
//                     fgColor: context.theme.textPrimary,
//                     name: "Reset Password", 
//                     onPressed: (){
                  
//                     },
//                      isLoading: false),
//                 // )
          
          
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

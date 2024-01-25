import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/toast.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/login/presentation/bloc/login_bloc.dart';
import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';
import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';
import 'package:kevell_care/pages/otp/otp_screen.dart';

class ForgotScreen extends StatelessWidget {
  static const routeName = '/forgot-screen';
   TextEditingController textEditingController = TextEditingController();
      TextEditingController passwordController = TextEditingController();
   TextEditingController confirmpassController = TextEditingController();

    GlobalKey<FormState> formKey = GlobalKey<FormState>();
   ForgotScreen({Key? key}) : super(key: key);
 bool patient = false;
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: context.theme.primary,
      appBar: AppBar(
        backgroundColor: context.theme.primary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Forgot password ",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                color: context.theme.backround,
                              )),
                  const SizedBox(height: 50),
                  const Text(
                    "Provide your account's Email/mobile for which you \n  want to Reset your password",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Email / Mobile',
                  ),
                  const SizedBox(height: 20),
                  TextFieldWidget(
                    textEditingController: textEditingController,
                    onChanged: (value) {},
                    hintText: 'Enter your email address or mobile number',
                    keyboardType: TextInputType.text,
                    validate: (userame) {
                if (userame == null || userame.isEmpty) {
                  return "Please enter an email / mobile nember ";
                }               return null; // Return null if validation succeeds
              },
                  ),
                   const SizedBox(height: 20),
                   const Text(
                    'New password',
                  ),
                  const SizedBox(height: 20),
                  TextFieldWidget(
                    textEditingController: passwordController,
                    onChanged: (value) {},
                    hintText: 'Enter your Password',
                    keyboardType: TextInputType.text,
                    validate: (userame) {
                if (userame == null || userame.isEmpty) {
                  return "Please enter your Password";
                }               return null; // Return null if validation succeeds
              },
                  ), 
                   const SizedBox(height: 20),
                   const Text(
                    'Confirm Password',
                  ),
                  const SizedBox(height: 20),
                  TextFieldWidget(
                    textEditingController: confirmpassController,
                    onChanged: (value) {},
                    hintText: 'Enter your password',
                    keyboardType: TextInputType.text,
                    validate: (userame) {
                if (userame == null || userame.isEmpty) {
                  return "Please enter your password ";
                }               return null; // Return null if validation succeeds
              },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // GestureDetector(
      
                  // child:
                  BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
       if (!state.isLoading && state.isError) {
                    Toast.showToast(
                      context: context,
                      message: state.message ?? "",
                    );
                  }
      
                  if (!state.isLoading && state.hasValidationData) {
                   Toast.showToast(
                    context: context,
                    message: 'OTP generated Successfully🥳',
                  );

                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) =>  OtpScreen(
                        password: confirmpassController.value.text, 
                        email: textEditingController.value.text, 
                        otp: state.otpDetails.toString(),
                        
                      ),
                    ),
                    (route) => false,
                  );
                  }
      
      
                    },
                    builder: (context, state) {
                      return TextButtonWidget(
                          bgColor: context.theme.backround,
                          fgColor: context.theme.textPrimary,
                          name: "Submit",
                          onPressed: () {
                           {
                      if (formKey.currentState!.validate()) {
                        context.read<LoginBloc>().add(
                              LoginEvent.forgot(
                                  email: textEditingController.value.text,
                                  ),
                          );
                        }
                      }
                          },
                          isLoading: state.isLoading);
                    },
                  ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

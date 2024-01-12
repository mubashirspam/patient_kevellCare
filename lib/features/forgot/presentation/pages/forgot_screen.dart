import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/toast.dart';
import 'package:kevell_care/core/helper/validater.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/forgot/presentation/bloc/forgot_bloc.dart';
import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';
import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';
import 'package:kevell_care/pages/otp/otp_screen.dart';

class ForgotScreen extends StatelessWidget {
  static const routeName = '/forgot-screen';
   TextEditingController textEditingController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
   ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    String? validateEmailOrMobile(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter an email address or mobile number';
      } else if (regex.hasMatch(value)) {
        if (!regexMobile.hasMatch(value)) {
          return 'Please enter a valid mobile number or email';
        }
      } else if (regexMobile.hasMatch(value)) {
        if (!regex.hasMatch(value)) {
          return 'Please enter a valid email or mobile number';
        }
      } else {
        return 'Please enter a valid email or mobile number';
      }
      return null;
    }

    void onSubmit() {
      if (formKey.currentState != null && formKey.currentState!.validate()) {
        print('Valid input! Ready to submit.');
      }
    }

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
        title: const Text(
          'Forgot Password ?',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
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
                    validate: validateEmailOrMobile,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // GestureDetector(
      
                  // child:
                  BlocConsumer<ForgotBloc, ForgotState>(
                    listener: (context, state) {
       if (!state.isLoading && state.isError) {
                    Toast.showToast(
                      context: context,
                      message: state.message ?? "",
                    );
                  }
      
                  if (!state.isLoading && state.hasData) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text(state.message ?? ""),
                      
                      ),
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
                        context.read<ForgotBloc>().add(
                              ForgotEvent.forgot(
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

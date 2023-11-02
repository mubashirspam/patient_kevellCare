import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/pages/otp/otp_screen.dart';

import '../../../core/helper/toast.dart';
import '../../widgets/buttons/text_button_widget.dart';
import 'bloc/login_bloc.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController controller = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isButtonDisabled = true;

  void validateForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid
      setState(() {
        isButtonDisabled = false; // Enable the button

        log(isButtonDisabled.toString());
      });
    } else {
      // Form is invalid
      setState(() {
        isButtonDisabled = true; // Disable the button
        log(isButtonDisabled.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "User name / Mobile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            TextFormField(
              style: TextStyle(color: context.theme.backround),
              cursorColor: context.theme.backround,
              validator: (userame) {
                if (userame == null || userame.isEmpty) {
                  return "Please enter an userame ";
                }
                return null; // Return null if validation succeeds
              },
              onChanged: (value) {
                validateForm();
              },
              controller: controller,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if (!state.isLoading && state.isError) {
                  Toast.showToast(
                    context: context,
                    message: state.message,
                  );
                }
                if (!state.isLoading && state.hasValidationData) {
                  if (state.loginDetails!.data!.first.username != null &&
                      state.loginDetails!.data!.first.id != null) {
                    Toast.showToast(
                      context: context,
                      message: "Otp Generted successfully",
                    );
                    Navigator.of(context).pushNamed(OtpScreen.routeName);
                  } else {
                    Toast.showToast(
                      context: context,
                      message: state.message,
                    );
                  }
                }
              },
              builder: (context, state) {
                return TextButtonWidget(
                  bgColor: context.theme.backround,
                  fgColor: context.theme.primary,
                  name: "Get Otp",
                  onPressed: () {
                    context.read<LoginBloc>().add(
                          LoginEvent.login(
                            usernameOrMobile: controller.value.text,
                          ),
                        );
                  },
                  isLoading: state.isLoading,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

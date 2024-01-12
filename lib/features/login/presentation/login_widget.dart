import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';
import 'package:kevell_care/pages/initialize/initialize.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';
import '../../../core/helper/toast.dart';


import '../../widgets/buttons/text_button_widget.dart';
import 'bloc/login_bloc.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController controller =
      TextEditingController(text: "test@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "1234567");

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(

     child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Email / Mobile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 10),
            TextFieldWidget(
              hintText: "Enter your email",
              textEditingController: controller,
              keyboardType: TextInputType.visiblePassword,
              validate: (userame) {
                if (userame == null || userame.isEmpty) {
                  return "Please enter an email / mobile nember ";
                }               return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 10),
            TextFieldWidget(
              hintText: "Enter your password",
              textEditingController: passwordController,
              keyboardType: TextInputType.visiblePassword,
              validate: (userame) {
                if (userame == null || userame.isEmpty) {
                  return "Please enter an password";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 30),
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if (!state.isLoading &&
                    state.isError &&
                    !state.hasValidationData) {
                  Toast.showToast(
                    color: Colors.red,
                    context: context,
                    message: state.message,
                  );
                }

                if (!state.isLoading && state.hasValidationData) {
                  addToSS(mailsecureStoreKey,
                      state.otpDetails!.data.first.name??"");

                  addToSS(drIdsecureStoreKey,
                      state.otpDetails!.data.first.id.toString());

                  addTokenToSS(
                      secureStoreKey, state.otpDetails!.data.first.token);

                  log("Token : ${state.otpDetails!.data.first.token}");
                  Toast.showToast(
                    context: context,
                    message: 'You are successfully Logined 🥳',
                  );

                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Initialize(),
                    ),
                    (route) => false,
                  );
                                }
              },
              builder: (context, state) {
                return TextButtonWidget(
                 bgColor: context.theme.backround,
                  fgColor: context.theme.textPrimary,
                  name: "Login",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<LoginBloc>().add(
                            LoginEvent.login(
                                usernameOrMobile: controller.value.text,
                                password: passwordController.value.text),
                        );
                      }
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../core/helper/toast.dart';
import '../../../pages/login_scrren/presentation/login_screen.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../bloc/signup_bloc.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController mobile = TextEditingController();
  TextEditingController usename = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "User name",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: usename,
            style: TextStyle(color: context.theme.backround),
            cursorColor: context.theme.backround,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Mobile Number",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: mobile,
            style: TextStyle(color: context.theme.backround),
            cursorColor: context.theme.backround,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
            ),
          ),
          const SizedBox(height: 20),
          BlocConsumer<SignupBloc, SignupState>(
            listener: (context, state) {
              if (!state.isLoading && state.isError) {
                Toast.showToast(
                  context: context,
                  message: state.message ?? "",
                );
              }

              if (!state.isLoading && state.hasValidationData) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text(state.message ?? ""),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                LoginScreen.routeName, (route) => false);
                          },
                          child: const Text("Click here to login"))
                    ],
                  ),
                );
              }
            },
            builder: (context, state) {
              return TextButtonWidget(
                bgColor: context.theme.backround,
                fgColor: context.theme.primary,
                name: "Get Otp",
                onPressed: () {
                  context.read<SignupBloc>().add(
                        SignupEvent.signup(
                          phone: mobile.value.text,
                          userName: usename.value.text,
                        ),
                      );
                },
                isLoading: state.isLoading,
              );
            },
          ),
        ],
      ),
    );
  }
}

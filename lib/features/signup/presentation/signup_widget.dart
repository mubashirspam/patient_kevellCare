import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/signup/data/models/signup_model.dart'
    as model;

import '../../../core/helper/toast.dart';
import '../../../core/helper/validater.dart';
import '../../login/presentation/pages/login_screen.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/input_field/input_field_widget.dart';
import '../bloc/signup_bloc.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white)),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: nameController,
              hintText: "Name",
              validate: (name) {
                if (name == null || name.isEmpty) {
                  return "Please enter your name";
                }
                return null;
              },
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 20),
            Text("Email address",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white)),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: emailController,
              onChanged: (value) {},
              hintText: "What’s your email address?",
              keyboardType: TextInputType.emailAddress,
              validate: (email) {
                if (email == null || email.isEmpty) {
                  return "Please enter an email address";
                } else if (!regex.hasMatch(email)) {
                  return "Please enter a valid email address";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            Text("Mobile",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white)),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: mobileController,
              onChanged: (value) {},
              hintText: "+91",
              keyboardType: TextInputType.number,
              validate: (number) {
                if (number == null || number.isEmpty) {
                  return "Please enter an mobile number";
                } else if (!regexMobile.hasMatch(number)) {
                  return "Please enter a valid mobile number";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            Text("Password (min. 8 characters)",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white)),
            const SizedBox(height: 10),
            TextFieldWidget(
              maxLines: 1,
              obscureText: true,
              textEditingController: passwordController,
              onChanged: (value) {},
              hintText: "Choose a password",
              keyboardType: TextInputType.visiblePassword,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a password";
                } else if (value.length < 8) {
                  return "Password must contain at least 8 characters";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            Text("Confirm Password",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white)),
            const SizedBox(height: 10),
            TextFieldWidget(
              maxLines: 1,
              obscureText: true,
              textEditingController: confirmPasswordController,
              onChanged: (value) {},
              hintText: "Choose a password",
              keyboardType: TextInputType.visiblePassword,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a password";
                } else if (value != passwordController.value.text) {
                  return "Password must same as above";
                }
                return null; // Return null if validation succeeds
              },
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
                  fgColor: context.theme.textPrimary,
                  name: "Register",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<SignupBloc>().add(
                            SignupEvent.signup(
                              name: nameController.value.text, 
                              mobileNo: mobileController.value.text, 
                              password: passwordController.value.text, 
                              email: emailController.value.text
                                ),
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

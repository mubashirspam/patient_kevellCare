import 'package:flutter/material.dart';

import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/forgot/presentation/pages/forgot_screen.dart';
import 'package:kevell_care/pages/signup_screen/presentation/signup_screen.dart';

import '../login_widget.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * 0.85,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: context.theme.primary,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(2))),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome \nto Kevell Care 🙌 ",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                color: context.theme.backround,
                              )),
                      const SizedBox(height: 20),
                      Text(
                        "We're glad to have you back. Please enter your email to proceed.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: context.theme.backround),
                      ),
                      const SizedBox(height: 40),
                      const LoginWidget(),
                      TextButton(onPressed: (){

                          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   ForgotScreen()
                      ),
                      );
                      }, child: const Text("Forgot password"))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, SignupScreen.routeName),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    text: "Don’t have an account yet? ",
                    children: [
                      TextSpan(
                        text: "Sign up.",
                        style: TextStyle(
                            color: context.theme.primary,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

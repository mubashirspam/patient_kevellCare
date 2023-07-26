import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../widgets/buttons/text_button_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          TextField(
            style: TextStyle(color: context.theme.backround),
            cursorColor: context.theme.backround,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          TextButtonWidget(
            bgColor: context.theme.backround,
            fgColor: context.theme.primary,
            name: "Get Otp",
            onPressed: () {},
            isLoading: false,
          ),
        ],
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';

import '../../configure/value/constant.dart';
import '../../configure/value/secure_storage.dart';
import '../../core/helper/toast.dart';
import '../../features/login/presentation/bloc/login_bloc.dart';
import '../initialize/initialize.dart';

class OtpScreen extends StatefulWidget {
  static const routeName = '/otp-screen';
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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

  List<String> otp = List.filled(4, '');
  final List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());
  final List<TextEditingController> otpControllers =
      List.generate(4, (index) => TextEditingController());
  int currentField = 0;

  @override
  void initState() {
    super.initState();
    focusNodes[0].requestFocus();
  }

  @override
  void dispose() {
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onOtpChange(String value) {
    if (value.length == 1 && currentField < 3) {
      setState(() {
        currentField++;
        focusNodes[currentField].requestFocus();
      });
    } else if (value.isEmpty && currentField > 0) {
      setState(() {
        currentField--;
        focusNodes[currentField].requestFocus();
      });
    }
    otp[currentField] = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (!state.isLoading && state.isError && !state.otpVarified) {
              Toast.showToast(
                context: context,
                message: state.message,
              );

              deleteFromSS(secureStoreKey);
            }

            if (!state.isLoading && state.otpVarified) {
              Toast.showToast(
                context: context,
                message: state.message,
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
            final number = state.loginDetails!.data!.first.mobile!;
            final otp = state.loginDetails!.data!.first.otp!;

            log(number);
            log(otp);

            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OTP Verification",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: context.theme.primary, fontSize: 22),
                ),
                const SizedBox(height: 20),
                Text(
                  "We have sent a verification code to",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                Text(
                  number,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: currentField == i
                                ? context.theme.primary!
                                : context.theme.textPrimary!,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: TextFormField(
                            autofocus: i == 0,
                            // focusNode: focusNodes[i],
                            controller: otpControllers[i],
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            onChanged: _onOtpChange,
                            style: const TextStyle(fontSize: 24),
                            decoration: const InputDecoration(
                              counterText: '',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "Didn’t receive the OTP? Retry in 00:23",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                TextButtonWidget(
                  name: isButtonDisabled ? "Enter OTP" : "Verify otp",
                  onPressed: () {
                    context.read<LoginBloc>().add(
                          LoginEvent.varyfiyOtp(
                            number: number,
                            otp: otp,
                          ),
                        );
                  },
                  isLoading: state.isLoading,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

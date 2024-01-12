import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/forgot/presentation/bloc/forgot_bloc.dart';
import 'package:kevell_care/features/forgot/presentation/pages/otp.dart';
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
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int _secondsRemaining = 60;
  bool _timerActive = false;

  String otps = '';

  Timer? timer;

  void startTimer() {
    setState(() {
      _timerActive = true;
      _secondsRemaining = 60;
    });

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        timer.cancel();
        setState(() {
          _timerActive = false;
        });
      } else {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  void sendOTP() {
    // Replace this with your OTP sending logic
    // You can call this method when you want to send OTP
    // Make sure to check if the timer is not active before sending OTP
    if (!_timerActive) {
      // Send OTP logic here
      // After sending OTP, start the timer
      startTimer();
    }
  }

  List<String> otp = List.filled(6, '');
  final List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());
  final List<TextEditingController> otpControllers =
      List.generate(6, (index) => TextEditingController());
  int currentField = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   focusNodes[0].requestFocus();
  // }

  // @override
  // void dispose() {
  //   for (var focusNode in focusNodes) {
  //     focusNode.dispose();
  //   }
  //   for (var controller in otpControllers) {
  //     controller.dispose();
  //   }
  //   super.dispose();
  // }

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
  void initState() {
    sendOTP();
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
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
                color: Colors.red,
                context: context,
                message: "Incorrect otp",
              );

              deleteFromSS(secureStoreKey);
            }

            if (!state.isLoading && state.otpVarified) {
              addToSS(
                  mailsecureStoreKey, state.otpDetails!.data.first.name??"");

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

            if (!state.isLoading && state.isError && !state.otpVarified) {
              Toast.showToast(
                color: Colors.red,
                context: context,
                message: "Incorrect otp",
              );
            }
          },
          builder: (context, state) {
       final number = state.loginDetails?.data.first.mobileNo ?? '';
// final otp = state.loginDetails?.data?.first?. ?? '000000';

            log("number : $number");
            log("OTP : $otp");

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
                OtpFiled(onOtpEntered: (p0) => setState(() => otps = p0)),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () => !_timerActive ? sendOTP : null,
                  child: Text(
                    _timerActive
                        ? "Didn’t receive the OTP? Retry in 00:$_secondsRemaining"
                        : 'Didn’t receive the OTP? Send otp again',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(height: 20),
                TextButtonWidget(
                  name: "Reset password",
                  onPressed: _timerActive && otps.length == 6
                      ? () {
                          context.read<ForgotBloc>().add(
                                ForgotEvent.forgot(
                                  email: number,
                                  // otp: otp,
                                ),
                              );
                          if (otps.length == 6) {
            //                     Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ResetPassword()),
            // );
                          } else {
                            deleteFromSS(secureStoreKey);
                            Toast.showToast(
                              color: Colors.red,
                              context: context,
                              message: "Incorrect otp",
                            );
                          }
                        }
                      : null,
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

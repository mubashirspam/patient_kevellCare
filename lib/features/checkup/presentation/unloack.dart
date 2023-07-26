import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

class UnloackWidget extends StatelessWidget {
  final bool isConnected;
  final bool isUnloacked;
  final bool isLoading;
  final bool isUnloacking;

  final bool? isDoctorDriven;

  final void Function(bool)? onChanged;
  final VoidCallback onpressed;
  const UnloackWidget(
      {super.key,
      required this.isConnected,
      required this.isUnloacking,
      required this.isUnloacked,
      required this.onChanged,
      required this.isLoading,
      this.isDoctorDriven,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: isConnected ? Colors.green : Colors.red,
            padding: const EdgeInsets.all(5).copyWith(left: 20, right: 20),
            child: isLoading
                ? const LinearProgressIndicator(
                    color: Colors.white,
                  )
                : isConnected
                    ? const Text("Yor Mobile is connected to device id :1923 ")
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                              "Please make device online connect again "),
                          GestureDetector(
                              onTap: onpressed,
                              child: const Icon(
                                Icons.sync_alt_outlined,
                                color: Colors.white,
                              ))
                        ],
                      )),
        isDoctorDriven ?? false
            ? const SizedBox()
            : isConnected
                ? Padding(
                    padding: isUnloacking
                        ? const EdgeInsets.symmetric(horizontal: 20)
                            .copyWith(bottom: 15, top: 10)
                        : const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Unloack the kit",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: 18),
                        ),
                        isUnloacking
                            ? SizedBox(
                                height: 20,
                                width: 20,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    strokeWidth: 5,
                                    color: context.theme.primary,
                                  ),
                                ),
                              )
                            : Switch(
                                activeColor: context.theme.primary,
                                value: isUnloacked,
                                onChanged: onChanged,
                              ),
                      ],
                    ),
                  )
                : const SizedBox()
      ],
    );
  }
}

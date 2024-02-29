import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/home/data/models/medical_service_model.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../configure/color/maian_color.dart';
import '../../../../configure/color/text_color.dart';

class CheckupCard extends StatelessWidget {
  final String name;
  final List<Widget> children;
  final VoidCallback onPress;
  final String? imageName;
  const CheckupCard({
    super.key,
    required this.children,
    this.imageName,
    required this.name,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20).copyWith(top: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            CardColor.color2,
            CardColor.color5,
          ],
        ),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                CircleAvatar(
                  minRadius: 25,
                  maxRadius: 25,
                  backgroundImage: NetworkImage(imageName ??
                      "https://images.unsplash.com/photo-1576091160550-2173dba999ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80"),
                  backgroundColor: context.theme.secondary,
                ),
                const SizedBox(width: 15),
                Expanded(
                    child: Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 24),
                )),
                // GestureDetector(
                //   onTap: onPress,
                //   child: CircleAvatar(
                //     minRadius: 25,
                //     maxRadius: 25,
                //     backgroundColor: context.theme.primary,
                //     child: const Center(
                //       child: Icon(Icons.play_arrow),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: children,
            ),
          )
        ],
      ),
    );
  }
}

class HelathCardWidget extends StatelessWidget {
  final HelathCard data;
  final VoidCallback? onPress;
  final bool isLoading;
  final bool isReading;
  final bool? isData;

  const HelathCardWidget(
      {super.key,
      required this.data,
      required this.onPress,
      required this.isLoading,
      required this.isReading,
      this.isData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: data.color, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (onPress != null)
                CircleAvatar(
                  radius: 24,
                  backgroundColor: context.theme.backround,
                  child: Icon(
                    data.iconData,
                    size: 30,
                    color: data.color,
                  ),
                ),
              if (onPress != null) const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isData == false) const SizedBox(height: 13),
                  Text(
                    data.name,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black,
                        fontSize: isData == false ? 22 : 18),
                  ),
                  if (isData != false) const SizedBox(height: 8),
                  if (isData != false)
                    Text.rich(
                      TextSpan(text: "Ref: ", children: [
                        TextSpan(
                          text: data.refe,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ]),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                ],
              ),
              const Spacer(),
              // if (onPress != null)
              //   GestureDetector(
              //     onTap: onPress,
              //     child: CircleAvatar(
              //       minRadius: 25,
              //       maxRadius: 25,
              //       backgroundColor: Colors.black,
              //       child: Center(
              //         child: isLoading
              //             ? Padding(
              //                 padding: const EdgeInsets.all(15),
              //                 child: CircularProgressIndicator(
              //                   backgroundColor: Colors.black,
              //                   color: data.color,
              //                 ),
              //               )
              //             : Icon(
              //                 Icons.play_arrow,
              //                 color: data.color,
              //               ),
              //       ),
              //     ),
              //   ),
            ],
          ),
          if (isData != false) const SizedBox(height: 20),
          if (isData != false)
            Row(children: [
              Text.rich(
                TextSpan(text: data.data, children: [
                  TextSpan(
                    text: data.unit,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ]),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              if (onPress != null) const SizedBox(width: 20),
              if (onPress != null)
                isReading
                    ? LoadingAnimationWidget.staggeredDotsWave(
                        size: 50, color: Colors.black)
                    : const SizedBox()
            ])
        ],
      ),
    );
  }
}

class HelathCard {
  final String data;
  final IconData iconData;
  final String unit;
  final String refe;
  final Color color;
  final String name;

  const HelathCard({
    required this.color,
    required this.data,
    required this.name,
    required this.refe,
    required this.unit,
    required this.iconData,
  });
}

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../configure/color/maian_color.dart';
import '../../../configure/value/constant.dart';

class ActiveAvatar extends StatelessWidget {
  final double? radius;
  final bool? isActive;
  final String? imageUrl;
  const ActiveAvatar({super.key, this.radius, this.isActive, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    Uint8List imageBytes = base64Decode(imageUrlForDummy);
    return Stack(
      children: [
        CircleAvatar(
          maxRadius: radius ?? 35,
          minRadius: radius ?? 35,
          backgroundImage: MemoryImage(imageBytes),
        ),
        isActive ?? true
            ? Positioned(
                right: 2,
                top: 2,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: MainConfigColorsDarkTheme.success,
                      border: Border.all(
                        width: 2,
                        color: context.theme.backround!,
                      )),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}

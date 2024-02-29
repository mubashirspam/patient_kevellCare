import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../configure/color/maian_color.dart';

class ActiveAvatar extends StatelessWidget {
  final double? radius;
  final double? imgRadius;
  final bool? isActive;
  final String? imageUrl;
  const ActiveAvatar(
      {super.key, this.radius, this.isActive, this.imageUrl, this.imgRadius});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: radius ?? 63,
          width: radius ?? 63,
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(imgRadius ?? 30),
              child: Image.network(
                imageUrl ?? "",
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported_outlined),
                fit: BoxFit.cover,
              )),
        ),
        isActive ?? true
            ? Positioned(
                right: 6,
                top: 6,
                child: Container(
                  width: 20,
                  height: 20,
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


import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../configure/color/maian_color.dart';


class ActiveAvatar extends StatelessWidget {
  final double? radius;
  final bool? isActive;
  final String? imageUrl;
  const ActiveAvatar({super.key, this.radius, this.isActive, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          maxRadius: radius ?? 35,
          minRadius: radius ?? 35,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  imageUrl ?? "",
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image_not_supported_outlined),
                  fit: BoxFit.fitWidth,
                )),
          ),
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

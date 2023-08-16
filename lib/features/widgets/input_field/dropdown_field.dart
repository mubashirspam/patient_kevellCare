import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

class DropDownFiledWidet extends StatelessWidget {
  final void Function(dynamic)? onChanged;
  final List<DropdownMenuItem> items;
  final String? hintText;
  const DropDownFiledWidet({
    super.key,
    required this.items,
    required this.onChanged,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      borderRadius: BorderRadius.circular(12),
      elevation: 2,
      items: items,

      onChanged: onChanged,
      decoration: InputDecoration(
        constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 40,
            minWidth: MediaQuery.of(context).size.width - 40),
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
        ).copyWith(bottom: 10),
        filled: true,
        fillColor: context.theme.inputFiled,
        enabled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

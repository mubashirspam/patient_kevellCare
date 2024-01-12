import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../../configure/assets_manage/icons.dart';

ValueNotifier<int> selectedIndexNorifier = ValueNotifier<int>(0);

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIndexNorifier,
        builder: (context, int index, _) {
          return SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      color: context.theme.textPrimary!.withOpacity(0.05),
                      offset: const Offset(1, -3),
                      spreadRadius: 5)
                ],
                color: context.theme.backround,
              ),
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: item(
                            context,
                            0,
                            "home",
                            selectedIndexNorifier.value == 0
                                ? AppIcons.homeA
                                : AppIcons.home)),
                    Expanded(
                        child: item(
                            context,
                            1,
                            "Appoinment",
                            selectedIndexNorifier.value == 1
                                ? AppIcons.appointmentA
                                : AppIcons.appointment)),
                    Expanded(
                        child: item(
                            context,
                            2,
                            "Chat",
                            selectedIndexNorifier.value == 2
                                ? AppIcons.chatA
                                : AppIcons.chat)),
                    Expanded(
                        child: item(
                            context,
                            3,
                            "History",
                            selectedIndexNorifier.value == 3
                                ? AppIcons.historyA
                                : AppIcons.history)),
                    Expanded(
                        child: item(
                            context,
                            4,
                            "Profile",
                            selectedIndexNorifier.value == 4
                                ? AppIcons.profileA
                                : AppIcons.profile)),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget item(BuildContext context, int index, String name, icon) {
    return GestureDetector(
      onTap: () {
        selectedIndexNorifier.value = index;
      },
      child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                    style: selectedIndexNorifier.value != index
                        ? TextStyle(
                            fontSize: 10,
                            color: context.theme.textPrimary,
                            fontWeight: FontWeight.bold)
                        : TextStyle(
                            fontSize: 11,
                            color: context.theme.primary,
                            fontWeight: FontWeight.bold),
                    name),
              )
            ],
          )),
    );
  }
}

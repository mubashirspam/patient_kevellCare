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
              color: context.theme.backround,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: item(context, 0, "home", AppIcons.home)),
                    Expanded(
                        child:
                            item(context, 1, "Appoinment", AppIcons.schedule)),
                    Expanded(child: item(context, 2, "Chat", AppIcons.chat)),
                    Expanded(
                        child: item(context, 3, "History", AppIcons.history)),
                    Expanded(
                        child: item(context, 4, "Profile", AppIcons.profile)),
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
              SvgPicture.asset(
                icon,
                color: selectedIndexNorifier.value == index
                    ? context.theme.primary
                    : null,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                    style: selectedIndexNorifier.value != index
                        ? TextStyle(
                            fontSize: 10,
                            color: context.theme.textGrey,
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

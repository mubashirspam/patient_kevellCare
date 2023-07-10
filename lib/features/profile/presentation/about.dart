import 'package:flutter/material.dart';
import 'package:kevell_care/features/profile/presentation/widgets/listtile_widget.dart';

import '../../../configure/assets_manage/icons.dart';


class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTileWidget(
      iconName: AppIcons.info,
      titleName: "About App",
    );
  }
}

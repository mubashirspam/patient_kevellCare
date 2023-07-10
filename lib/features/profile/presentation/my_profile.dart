
import 'package:flutter/cupertino.dart';

import '../../../configure/assets_manage/icons.dart';
import '../../../pages/profile/presenation/my_profile_screen.dart';

import 'widgets/listtile_widget.dart';



class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileWidget(
      onTap: () => Navigator.of(context).pushNamed(MyProfileScreen.routeName),
      iconName: AppIcons.profileP,
      titleName: "My Profile",
    );
  }
}


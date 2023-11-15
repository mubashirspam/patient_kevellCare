
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care/features/profile/presentation/doctor_ratings.dart';

import '../../../configure/assets_manage/icons.dart';

import 'widgets/listtile_widget.dart';



class my_ratings extends StatelessWidget {
  const my_ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileWidget(
      onTap: () =>  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DoctorRating()),
            ),
      iconName: AppIcons.rating,
      titleName: "My Ratings",
    );
  }
}


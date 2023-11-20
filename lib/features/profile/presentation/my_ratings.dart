
import 'package:flutter/material.dart';
import 'package:kevell_care/pages/rating/presentation/rating_screen.dart';

import '../../../configure/assets_manage/icons.dart';

import '../../profile/presentation/widgets/listtile_widget.dart';



class my_ratings extends StatelessWidget {
  const my_ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileWidget(
      onTap: () =>  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DoctorRating()),
            ),
      iconName: AppIcons.rating,
      titleName: "My Ratings",
    );
  }
}


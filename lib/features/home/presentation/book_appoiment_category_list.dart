import 'package:flutter/material.dart';
import 'package:kevell_care/configure/assets_manage/icons.dart';
import 'package:kevell_care/features/home/presentation/widgets/book_appiment_category_card.dart';

class BookAppimentCategoryList extends StatelessWidget {
  const BookAppimentCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: BookAppointmentCard(
            iconName: AppIcons.emergency,
            name: "Emergency check up",
          )),
          SizedBox(width: 15),
          Expanded(
              child: BookAppointmentCard(
            iconName: AppIcons.fullCheckup,
            name: "Full body check up",
          )),
          SizedBox(width: 15),
          Expanded(
              child: BookAppointmentCard(
            iconName: AppIcons.speseficCheckup,
            name: "Specific check up",
          )),
        ],
      ),
    );
  }
}
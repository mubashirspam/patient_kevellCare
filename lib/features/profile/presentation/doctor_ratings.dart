import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/profile/presentation/view_doctor_rating.dart';

import '../../../features/profile/presentation/view_my_profile.dart';



class DoctorRating extends StatelessWidget {
  const DoctorRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.secondary),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: context.theme.primary,
                
              ),
            ),
          ),
        ),
        backgroundColor: context.theme.backround,
        centerTitle: false,
        title: Row(
          children: [
            Expanded(
              child: Text(
                "Doctor Ratings",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: context.theme.secondary),
             child:Center(
               child: IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.search,
                color:  context.theme.primary,),),
                 ),
)          ],
        ),
      
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: DoctorRatingScreen(),
        ),
      ),
    );
  }
}

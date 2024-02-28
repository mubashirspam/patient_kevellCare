import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kevell_care/configure/assets_manage/icons.dart';
import 'package:kevell_care/configure/value/secure_storage.dart';
import 'package:kevell_care/configure/value/constant.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/pages/rating/presentation/rating_screen.dart';
import '../../../initialize/initialize.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.theme.primary,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1599566150163-29194dcaad36?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZhdGFyfGVufDB8fDB8fHww"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Text(
                      "Mr.Robin",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: context.theme.backround),
                    ),
                  ),
                  Text(
                    "robin@gmail.com",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: context.theme.backround),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      drawerList.length - 1,
                      (i) => listTile(
                        context,
                        drawerList[i]['name'],
                        drawerList[i]['icon'],
                        drawerList[i]['route'],
                      ),
                    )
                      ..add(
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ColoredBox(
                            color: context.theme.backround!.withOpacity(0.4),
                            child: const SizedBox(
                              height: 1,
                              width: double.maxFinite,
                            ),
                          ),
                        ),
                      )
                      ..add(
                        listTile(
                          context,
                          drawerList[drawerList.length - 1]['name'],
                          drawerList[drawerList.length - 1]['icon'],
                          drawerList[drawerList.length - 1]['route'],
                        ),
                      ),
                  ),
                ),
              ),
            ),
            Text(
              "App version 1.0.0",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: context.theme.backround,
                  ),
            )
          ],
        ),
      ),
    );
  }

  Widget listTile(
    BuildContext context,
    String name,
    icon,
    Widget? route, // Updated to accept Widget as a parameter
  ) =>
      ListTile(
        onTap: () {
          if (route != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => route,
              ),
            );
          } else {
            // Handle other onTap actions
          }
        },
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        trailing: Icon(
          Icons.chevron_right_rounded,
          color: context.theme.backround,
        ),
        title: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: context.theme.backround),
        ),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: context.theme.backround!.withOpacity(0.3)),
          child: Center(
            child: SvgPicture.asset(
              icon,
              color: context.theme.backround,
            ),
          ),
        ),
      );
}

List<Map<String, dynamic>> drawerList = [
  {
    "name": "Settings",
    "icon": AppIcons.settings,
  },
  {
    "name": "Notification",
    "icon": AppIcons.bell,
  },
  {
    "name": "Rating",
    "icon": AppIcons.rating,
    "route": DoctorRatingScreen(), 
  },
  {
    "name": "FAQ",
    "icon": AppIcons.question,
  },
  {
    "name": "About App",
    "icon": AppIcons.info,
  },
  {
    "name": "Help",
    "icon": AppIcons.question,
  },
  {
    "name": "Contact",
    "icon": AppIcons.info,
  },
  {
    "name": "Logout",
    "icon": AppIcons.logout,
  },
];

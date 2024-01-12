import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kevell_care/configure/assets_manage/icons.dart';
import 'package:kevell_care/configure/value/constant.dart';
import 'package:kevell_care/configure/value/secure_storage.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/pages/initialize/initialize.dart';

import '../../../features/appoiments/presentation/pages/appoinments_screen.dart';
import '../../../features/chat/presentation/pages/chat_screen.dart';


import '../../../features/appoiments/presentation/widgets/appoiment_screen_appbar.dart';

import '../../../features/chat/presentation/widgets/chat_appbar.dart';
import '../../../features/home/presentation/pages/home_screen.dart';
import '../../../features/home/presentation/widgets/home_appbar.dart';
import '../../profile/presenation/profile_screen.dart';
import '../../profile/presenation/widgets/profile_appbar.dart';

import '../../history/presentation/history_screen.dart';
import 'widgets/bottom_navigation.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static final List<Map<String, dynamic>> _pagesOptions =
      <Map<String, dynamic>>[
    {"page": const HomeScreen(), "appbar": const HomeAppBar(), "flotingButton": null},
    {
      "page": const AppointmentScreen(),
      "appbar": AppoinmentAppBar,
      "flotingButton": null
    },
    {
      "page": const ChatScreen(),
      "appbar": const ChatAppBar(),
      "flotingButton": null
    },
    {
      "page": const HistoryScreen(),
      "appbar": null,
      "flotingButton": null,
    },
    {
      "page": const ProfileScreen(),
      "appbar": const ProfileAppBar(),
      "flotingButton": null
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNorifier,
      builder: (context, index, _) {
        return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: index == 1
                  ? AppBar(
                      backgroundColor: context.theme.backround,
                      centerTitle: false,
                      title: Text(
                        "Appointments",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      bottom: TabBar(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: context.theme.primary,
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        automaticIndicatorColorAdjustment: false,
                        dragStartBehavior: DragStartBehavior.start,
                        labelStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        dividerColor: Colors.black,
                        indicatorColor: Colors.black,
                        unselectedLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        indicatorWeight: 5,
                        tabs: const <Tab>[
                          Tab(
                            child: Text(
                              "Upcoming",
                            ),
                          ),
                          Tab(
                            child: Text("Past"),
                          )
                        ],
                      ),
                    )
                  : _pagesOptions.elementAt(index)["appbar"],
              body: _pagesOptions.elementAt(index)["page"],
              floatingActionButton:
                  _pagesOptions.elementAt(index)["flotingButton"],
              bottomNavigationBar: const BottomWidget(),
              drawer: Drawer(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Text(
                      "Dr.Mubashir",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: context.theme.backround),
                    ),
                  ),
                  Text(
                    "mubashir@gmail.com",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: context.theme.backround),
                  ),
                ],
              )),
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
                      () {},
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
                          drawerList[drawerList.length - 1]['icon'], () async {
                        await deleteFromSS(mailsecureStoreKey);

                        await deleteFromSS(secureStoreKey).then(
                            (value) => Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => const Initialize(),
                                ),
                                (route) => false));
                      }),
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
      )),
    ),
            ));
      },
    );
  }

  Widget listTile(
          BuildContext context, String name, icon, void Function()? onPress) =>
      ListTile(
        onTap: onPress,
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

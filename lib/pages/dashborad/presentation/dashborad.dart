import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/pages/chat_screen/presenation/chat_screen.dart';
import '../../appoiment/presenation/appoinments_screen.dart';

import '../../appoiment/presenation/widgets/appoiment_screen_appbar.dart';
import '../../chat_screen/presenation/widgets/appbar_chat.dart';

import '../../home_screen/presentation/home_screen.dart';
import '../../home_screen/presentation/widgets/home_appbar.dart';
import '../../profile/presenation/profile_screen.dart';
import '../../profile/presenation/widgets/profile_appbar.dart';

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
    {
      "page": const HomeScreen(),
      "appbar": const HomeAppBar(),
      "flotingButton": null
    },
    {
      "page": const AppointmentScreen(),
      "appbar": AppoinmentAppBar,
      "flotingButton": null
    },
    {
      "page": const ChatPage(),
      "appbar": const ChatAppBar(),
      "flotingButton": null
    },
    {"page": const HomeScreen(), "appbar": null, "flotingButton": null},
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
                              "Online",
                            ),
                          ),
                          Tab(
                            child: Text("Offline"),
                          )
                        ],
                      ),
                    )
                  : _pagesOptions.elementAt(index)["appbar"],
              body: _pagesOptions.elementAt(index)["page"],
              floatingActionButton:
                  _pagesOptions.elementAt(index)["flotingButton"],
              bottomNavigationBar: const BottomWidget(),
            ));
      },
    );
  }
}

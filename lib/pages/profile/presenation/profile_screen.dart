import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../features/login/presentation/logout.dart';
import '../../../features/profile/presentation/about.dart';
import '../../../features/profile/presentation/bloc/profile_bloc.dart';
import '../../../features/profile/presentation/darkmood.dart';
import '../../../features/profile/presentation/faq.dart';
import '../../../features/profile/presentation/my_profile.dart';
import '../../../features/profile/presentation/notification.dart';
import '../../../features/profile/presentation/settings.dart';
import '../../../features/profile/presentation/widgets/profile_name_card.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = const [
      MyProfile(),
      Settings(),
      NotificationItem(),
      FAQ(),
      About(),
      DarkMode(),
    ];
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return SizedBox(
                    child: CircularProgressIndicator(
                      color: context.theme.primary,
                    ),
                  );
                }
                if (state.hasData) {
                  return ProfileNameCard(
                    email: state.result!.data!.first.name ?? "",
                    imageUrl:
                        "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2960&q=80",
                    name: state.result!.data!.first.username ?? "",
                  );
                }

                return const ProfileNameCard(
                  email: "johndoe@gmail.com",
                  imageUrl:
                      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2960&q=80",
                  name: "Johndoe",
                );
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SizedBox(
                child: Column(
                  children: List.generate(
                    list.length,
                    (index) => list[index],
                  ),
                ),
              ),
            ),
            const Logout()
          ],
        ),
      ),
    );
  }
}

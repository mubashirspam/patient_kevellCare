import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/configure/value/constant.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/profile/presentation/my_ratings.dart';

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
     WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    });
    List<Widget> list = const [
      MyProfile(),
      Settings(),
      NotificationItem(),
      FAQ(),
      my_ratings(),
      About(),
      DarkMode(),
      Logout()
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
                    imageUrl:state.result!.data!.first.profileImagelink??""
                        ,
                    name: state.result!.data!.first.username ?? "",
                  );
                }

                return const ProfileNameCard(
                  email: "johndoe@gmail.com",
                  imageUrl:imageUrlForDummy
                     ,
                  name: "Johndoe",
                );
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      list.length,
                      (index) => list[index],
                    ),
                  ),
                ),
              ),
            ),
            // const Logout()
          ],
        ),
      ),
    );
  }
}

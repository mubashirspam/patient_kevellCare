import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../core/helper/date.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/loading_widget.dart';
import 'bloc/profile_bloc.dart';
import 'edit_profile.dart';
import 'widgets/profile_name_card.dart';

class ViewMyProfile extends StatelessWidget {
  const ViewMyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    });
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.unauthorized) {}
      },
      // buildWhen: (previous, current) {
      //   return current != previous;
      // },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: LoadingWIdget());
        } else if (state.hasData) {
          return ViewMyProfileBlocBody(
            address: state.result!.data!.first.address ?? "No Adress",
            dob: state.result!.data!.first.dob == null
                ? DateTime.now().toIso8601String()
                : state.result!.data!.first.dob!.toIso8601String(),
            imgUrl: state.result!.data!.first.profileImagelink!,
            mobile: state.result!.data!.first.mobile ?? "No mobile",
            name: state.result!.data!.first.name ??
                state.result!.data!.first.username ??
                "No Name",
          );
        } else if (state.isError) {
          return const Center(child: AppErrorWidget());
        }
        return const Center(child: AppErrorWidget());
      },
    );
  }
}

class ViewMyProfileBlocBody extends StatelessWidget {
  final String name;
  final String imgUrl;
  final String mobile;
  final String dob;
  final String address;

  const ViewMyProfileBlocBody({
    required this.address,
    required this.dob,
    required this.imgUrl,
    required this.mobile,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileNameCard(
            email: mobile,
            imageUrl:imgUrl,
               
            name: name,
          ),
          const SizedBox(
            height: 30,
          ),
          Text("Basic Detail",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.normal)),
          const SizedBox(
            height: 25,
          ),
          Text("Mobile", style: Theme.of(context).textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(mobile,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
          Divider(color: context.theme.textGrey),
          Text("Date of Birth",
              style: Theme.of(context).textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(dateFormatToDDmonthYYYY(dob),
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
          Divider(color: context.theme.textGrey),
          Text("Adress", style: Theme.of(context).textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(address,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
          const Spacer(),
          TextButtonWidget(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                elevation: 0,
                isScrollControlled: true,
                context: context,
                builder: (context) => Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: EditMyProfile(
                    adress: address,
                    name: name,
                    mobile: mobile,
                    dob: dob,
                  ),
                ),
              );
            },
            name: "Edit Profile",
            isLoading: false,
          ),
        ],
      ),
    );
  }
}

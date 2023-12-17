import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/date_formater.dart';
import 'package:kevell_care/core/helper/date_validater.dart';
import 'package:kevell_care/core/helper/validater.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/calender/calnder.dart';
import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';

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
                        gender: state.result!.data.gender,
            height: state.result!.data.height,
            weight: state.result!.data.weight,

            email: state.result!.data.emailId,
          address: state.result!.data.address ?? {},
              dob: state.result!.data.dob == null
                ? DateTime.now().toIso8601String()
                : state.result!.data.dob.toString(),
            imgUrl: state.result!.data!.profileImagelink!,
            mobile: state.result!.data!.mobileNo ?? "No mobile",
            name: state.result!.data.name ??
                state.result!.data!.name ??
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
  final String gender;
  final String name;
  final String imgUrl;
  final String mobile;
  final String dob;
 final Map<String, dynamic> address; 
   final String height;
    final String weight;
     final String email;

  const ViewMyProfileBlocBody({
    required this.gender,
    required this.address,
        required this.height,
    required this.weight,
    required this.email,

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
            height: 20,
          ),
          
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                        Text("Basic Detail",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  ),
          const SizedBox(height:10),
                      Text("Email", style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(height: 10),
                     Text(email,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)),
                       Divider(color: context.theme.textGrey),
                        const SizedBox(height: 10),
                        Row(
                children: [
                  Expanded(
                      child: Text("Gender",
                          style: Theme.of(context).textTheme.headlineSmall)),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text("DOB",
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ],
              ),
              const SizedBox(height:10),
                        Row(
                          children: [
                            Expanded(
                              child: Text(gender,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)),
                            ),
                         Divider(color: context.theme.textGrey),

                            SizedBox(width: 10,),
                            Expanded(child: 
                        Text(dob,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)) )
                          ],
                        ),
                      Divider(color: context.theme.textGrey),
                        const SizedBox(height: 10,),
                          Text("Address",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium),
                  const SizedBox(height:10),
                        Text("Street",
                            style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(height: 10),
                         Text(address['street'] ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)),
                       Divider(color: context.theme.textGrey),

                       const SizedBox(height: 10,),
                       Text("City",
                            style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(height: 10),
                         Text("Madurai",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)),
                       Divider(color: context.theme.textGrey),

                        const SizedBox(height: 10),
                        Row(
                children: [
                  Expanded(
                      child: Text("State",
                          style: Theme.of(context).textTheme.headlineSmall)),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text("District",
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ],
              ),
              const SizedBox(height:10),
                        Row(
                          children: [
                            Expanded(
                              child:
                         Text("Tamil Nadu",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)),

                            ),
                               const SizedBox(width: 10),
                        Expanded(
                          child:  Text("Madurai",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)),
                        ),
                          ],
                        ),
                      Divider(color: context.theme.textGrey),

                        const SizedBox(height: 10),
                        Text("Zipcode",
                        style: Theme.of(context).textTheme.headlineSmall),
                       const SizedBox(height: 10),

                         Text("625001",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)),
                        
                        Divider(color: context.theme.textGrey),
                        const SizedBox(height: 10),


                        Text("Other details",
                            style: Theme.of(context).textTheme.headlineMedium),
                            const SizedBox( height:5),
                                 Row(
                children: [
                  Expanded(
                      child: Text("Height",
                          style: Theme.of(context).textTheme.headlineSmall)),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text("Weight",
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ],
              ),
              const SizedBox(height:10),
                        Row(
                          children: [
                            Expanded(
                              child:  Text(height,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)),
                            ),
                               const SizedBox(width: 10),
                        Expanded(
                          child:  Text(weight,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.normal)),
                        ),
                          ],
                        ),
                        Divider(color: context.theme.textGrey),
                        const SizedBox(height: 10,),
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
                      adress: address.,
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
                       
                             ]),
              ),
            ),
          
        ]
      ),
    );
  }
}





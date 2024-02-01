
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/features/profile/data/models/profile_model.dart';
import 'package:kevell_care/features/widgets/error_widget.dart';
import 'package:kevell_care/features/widgets/loading_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helper/toast.dart';

import '../bloc/profile_bloc.dart';

import '../upload_image.dart';
import 'edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';

  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    });

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) async {
        if (state.unauthorized) {
          Toast.showToast(
            context: context,
            message: "Please Login again ",
          );
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: Shimmer.fromColors(
              baseColor: context.theme.secondary!,
              highlightColor: Colors.white,
              child: const LoadingWIdget(),
            ),
          );
        } else if (state.hasData) {
          return ProfileBody(profileData: state.result!);
        } else if (state.isError) {
          return const Center(child: AppErrorWidget());
        }
        return const Center(child:Text("NO  data"));
      },
    );
  }
}

class ProfileBody extends StatelessWidget {
  final ProfileModel profileData;

  const ProfileBody({
    Key? key,
    required this.profileData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.maxFinite,
              height: 170,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.maxFinite,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: context.theme.primary,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60, bottom: 5),
                            child: Text(
                              profileData.data.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(color: context.theme.backround),
                            ),
                          ),
                          Text(
                            profileData.data.emailId,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: context.theme.backround),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: context.theme.secondary,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: profileData.data.profileImagelink,
                              placeholder: (context, url) => Shimmer.fromColors(
                                  baseColor: context.theme.secondary!,
                                  highlightColor: Colors.white,
                                  child: CircleAvatar(
                                    backgroundColor: context.theme.secondary,
                                  )),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.image_not_supported_rounded),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
     Positioned(
                    top: 65,
                    right: 15,
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const UploadImagePage(),
                            ),
                          );
                        },
                        child: Text(
                          "EDIT",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: context.theme.secondary),
                        )),
                  ),            
                    ],
              ),
            ),
       Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Basic Details",
                      style: Theme.of(context).textTheme.headlineMedium!),
                  InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          
                          backgroundColor: Colors.transparent,
                          useSafeArea: true,
                          elevation: 0,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).viewInsets.bottom),
                              child:  EditMyProfile(
                                height: profileData.data.height,
                                weight: profileData.data.weight,
                                city: profileData.data.address.city,
                                state: profileData.data.address.state,
                             // district: profileData.data.address.district,
                                street: profileData.data.address.street,
                                zipcode: profileData.data.address.zipCode,
                                name: profileData.data.name,
                                mobile:profileData.data.mobileNo,
                                dob: profileData.data.dob.toString(),
                                gender: profileData.data.gender,
                                email: profileData.data.emailId,
                              ),
                            ),
                          ),
                        );
                      },
                      child:
                       Text("EDIT",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: context.theme.primary),
                      )),
                ],
              ),
            ),    
            SizedBox(
                width: double.maxFinite,
                child:  Card(
                    elevation: 0,
                    margin: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: context.theme.primary,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Username: ${profileData.data.name}",
                                                            style: const TextStyle(color: Colors.white),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Email: ${profileData.data.emailId}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Mobile: ${profileData.data.mobileNo}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "DOB:${profileData.data.dob}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Gender:${profileData.data.gender}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                            
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Registered ID: ${profileData.data.id}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                 Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Address",
                      style: Theme.of(context).textTheme.headlineMedium!),
                  InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          
                          backgroundColor: Colors.transparent,
                          useSafeArea: true,
                          elevation: 0,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).viewInsets.bottom),
                              child:  EditMyProfile(
                                height: profileData.data.height,
                                weight: profileData.data.weight,
                                city: profileData.data.address.city,
                                state: profileData.data.address.state,
                             // district: profileData.data.address.district,
                                street: profileData.data.address.street,
                                zipcode: profileData.data.address.zipCode,
                                name: profileData.data.name,
                                mobile:profileData.data.mobileNo,
                                dob: profileData.data.dob.toString(),
                                gender: profileData.data.gender,
                                email: profileData.data.emailId,
                              ),
                            ),
                          ),
                        );
                      },
                      child:
                       Text("EDIT",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: context.theme.primary),
                      )),
                ],
              ),
            ),  
                 SizedBox(
                width: double.maxFinite,
                child:  Card(
                    elevation: 0,
                    margin: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: context.theme.primary,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Street: ${profileData.data.address.street}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                             Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "City: ${profileData.data.address.city}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),   Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "District: ${profileData.data.address.state}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                             Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "State: ${profileData.data.address.state}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                             Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Zipcode: ${profileData.data.address.zipCode}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                              ],
                      ),
                    ),
                  ),
                ),
                          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Other Details",
                      style: Theme.of(context).textTheme.headlineMedium!),
                  InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          
                          backgroundColor: Colors.transparent,
                          useSafeArea: true,
                          elevation: 0,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).viewInsets.bottom),
                              child:  EditMyProfile(
                                height: profileData.data.height,
                                weight: profileData.data.weight,
                                city: profileData.data.address.city,
                                state: profileData.data.address.state,
                             // district: profileData.data.address.district,
                                street: profileData.data.address.street,
                                zipcode: profileData.data.address.zipCode,
                                name: profileData.data.name,
                                mobile:profileData.data.mobileNo,
                                dob: profileData.data.dob.toString(),
                                gender: profileData.data.gender,
                                email: profileData.data.emailId,
                              ),
                            ),
                          ),
                        );
                      },
                      child:
                       Text("EDIT",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: context.theme.primary),
                      )),
                ],
              ),
            ),  
                 SizedBox(
                width: double.maxFinite,
                child:  Card(
                    elevation: 0,
                    margin: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: context.theme.primary,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Height: ${profileData.data.address.street}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                             Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Weight: ${profileData.data.address.city}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),   Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Kit_ID: ${profileData.data.address.state}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                             Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Device_id: ${profileData.data.address.state}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                             Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Diseases: ${profileData.data.address.zipCode}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Blood group: ${profileData.data.address.zipCode}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                ],
        ),
      ),
    );
  }
}
final mm = {
  "username": "MSD",
  "email": "MSD@gmail.com",
  "mobile": "7770007700",
  "password": "msd@123",
  "DOB": "07/07/1983",
  "address": {
    "street": "123 Main St",
    "city": "Anytown",
    "district": "District ABC",
    "state": "CA",
    "zip_code": "12345"
  },
  "specialist": "Dentist",
  "location": "Madurai",
  "registred_Id": "akshfkh1937971329",
  "professionalInformation": {
    "licenseNumber": 123456666,
    "type_specialty": "ENT",
    "medicalSchool": "GOVT-MEDICAL-CLG THANJORE",
    "graduationYear": "2018",
    "boardCertification": "Indian Medical Council"
  },
  "practiceInformation": [
    {
      "clinic_name": "Sri Vignesh ENT",
      "street": "66th main road",
      "city": "TMM",
      "state": "Tamilnadu",
      "zip_code": "625019"
    },
    {
      "clinic_name": "Sri Vignesh ENT",
      "street": "66th main road",
      "city": "TMM",
      "state": "Tamilnadu",
      "zip_code": "625019"
    }
  ],
  "communication_preferences": {
    "communication_preferences": "Tamil",
    "languages_spoken": ["tamil", "english", "french", "telugu"]
  },
  "biography_and_specializations": {
    "bio": "Hi all I'm a ENT doctor",
    "specializations": "Ear Nose Throat "
  },
  "consent_and_agreement": {
    "terms_and_conditions_agreed": "TRUE",
    "data_processing_consent": "TRUE"
  }
};
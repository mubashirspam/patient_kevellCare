// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:kevell_care/core/them/custom_theme_extension.dart';
// import 'package:kevell_care/features/profile/data/models/profile_model.dart';
// import 'package:kevell_care/features/profile/presentation/bloc/profile_bloc.dart';
// import 'package:kevell_care/features/widgets/error_widget.dart';
// import 'package:kevell_care/features/widgets/loading_widget.dart';

// class ViewMyProfile extends StatelessWidget {
//   final Data profile;
//   const ViewMyProfile({
//     required this.profile,super.key});

//   @override
//   Widget build(BuildContext context) {
//        List<String> detailsList = [
//   "Name:${profile.name ?? ''}",
//   "Address:Westheimer Rd. Santa Ana, Illinois 85486",
//   "Phone:${profile.mobileNo ?? ''}",
//   "Email:${profile.emailId ?? ''}",
//   "Gender:${profile.gender ?? ''}",
//   "Date of Birth:${profile.dob ?? ''}",
//   "Height:${profile.height ?? ''}",
//   "Weight:${profile.weight ?? ''}"
// ];
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       context.read<ProfileBloc>().add(
//             const ProfileEvent.getProfile(),
//           );
//     });
//     return BlocConsumer<ProfileBloc, ProfileState>(
//       listener: (context, state) {
//         // TODO: implement listeer
//         if(state.unauthorized){}
//       },
//       builder: (context, state) {
//         if(state.isLoading){
//           return const Center(child:LoadingWIdget());
//         }
//         else if(state.hasData){
     
//           return ViewMyProfileBlocBody(
//             email: state.result!.data.emailId,
//             dob: state.result!.data.dob.toString(),
//             mobile: state.result!.data.mobileNo ?? "No mobile",
//             name: state.result!.data.name ?? "",
//             detailsList:detailsList,
//           );
//         } else if (state.isError) {
//           return const Center(child: AppErrorWidget());
//         }
//         return const Center(child: AppErrorWidget());
        
//       },
//     );
//   }
// }


// class ViewMyProfileBlocBody extends StatelessWidget {

//   final String name;
//   final String dob;
//   final String email;
//   final String mobile;
//   final List<String> detailsList;
//   const ViewMyProfileBlocBody({
//     required this.email,
//     required this.name,
//     required this.dob,
//     required this.mobile,
//     required this.detailsList,
//     super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(15),
//                 margin: const EdgeInsets.all(20).copyWith(left: 0, bottom: 0),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   children: [
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         " Profiles",
//                         style: Theme.of(context)
//                             .textTheme
//                             .headlineMedium!
//                             .copyWith(color: Colors.black),
//                       ),
//                     ),
//                     SizedBox(
//                       width: double.maxFinite,
//                       height: 170,
//                       child: Stack(
//                         children: [
//                           Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 120,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(16),
//                                 color: context.theme.primary,
//                               ),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 60, bottom: 5),
//                                     child: Text(
//                                       name,
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .headlineMedium!
//                                           .copyWith(
//                                               color: context.theme.backround),
//                                     ),
//                                   ),
//                                   Text(
//                                     email,
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .titleMedium!
//                                         .copyWith(
//                                             color: context.theme.backround),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.topCenter,
//                             child: CircleAvatar(
//                               radius: 50,
//                               backgroundColor: context.theme.secondary,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(4),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(100),
//                                   child: const SizedBox(
//                                     height: 100,
//                                     width: 100,
//                                     // child: CachedNetworkImage(
//                                     //   fit: BoxFit.cover,
//                                     //   imageUrl:
//                                     //       "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//                                     //   placeholder: (context, url) => Shimmer.fromColors(
//                                     //       baseColor: context.theme.secondary!,
//                                     //       highlightColor: Colors.white,
//                                     //       child: CircleAvatar(
//                                     //         backgroundColor: context.theme.secondary,
//                                     //       )),
//                                     //   errorWidget: (context, url, error) =>
//                                     //       const Icon(Icons.image_not_supported_rounded),
//                                     // ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             top: 65,
//                             right: 15,
//                             child: InkWell(
//                                 onTap: () {
//                                   // Navigator.of(context).push(
//                                   //   MaterialPageRoute(
//                                   //     builder: (context) => const UploadImagePage(),
//                                   //   ),
//                                   // );
//                                 },
//                                 child: Text(
//                                   "EDIT",
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .titleLarge!
//                                       .copyWith(color: context.theme.secondary),
//                                 )),
//                           ),
//                           Positioned(
//                             top: 65,
//                             right: MediaQuery.of(context).size.width / 2 - 70,
//                             child: CircleAvatar(
//                               backgroundColor: context.theme.secondary,
//                               radius: 13,
//                               // child: Icon(
//                               //   // isverified ? Icons.verified : Icons.cancel_outlined,
//                               //   // color: isverified ? Colors.green : Colors.red,
//                               // ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         " Basic Details",
//                         style: Theme.of(context)
//                             .textTheme
//                             .headlineMedium!
//                             .copyWith(color: Colors.black),
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(15),
//                       margin: const EdgeInsets.all(20)
//                           .copyWith(left: 0, bottom: 0, right: 0),
//                       decoration: BoxDecoration(
//                           color: context.theme.primary,
//                           borderRadius: BorderRadius.circular(16)),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: List.generate(
//                           detailsList.length,
//                           (index) {
//                             final detail = detailsList[index].split(":");
//                             final key = detail[0].trim();
//                             final value = detail[1].trim();
//                             int flexValue =2;

//                             return Container(
//                               margin:const EdgeInsets.only(bottom: 14),
//                               child: Row(
//                                 children: [
//                                   Expanded(
//                                     child: Text(
//                                       key,
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .titleLarge,
//                                     ),
//                                   ),
//                                   Text(
//                                     ":  ",
//                                     style:
//                                         Theme.of(context).textTheme.titleLarge,
//                                   ),
//                                   Expanded(
//                                     flex: flexValue,
//                                     child: Text(
//                                       value,
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .titleMedium,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//   }
// }

  

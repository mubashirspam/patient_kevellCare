
import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
class ViewMyProfile extends StatelessWidget {
  const ViewMyProfile({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [  
          Container(
            padding: const EdgeInsets.all(15),
            margin:  const EdgeInsets.all(20).copyWith(left: 0, bottom: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
             
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                          " Profiles",
                                          style:Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color:Colors.black),
                                        ),
                                  ),
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
                          child: const SizedBox(
                            height: 100,
                            width: 100,
                            // child: CachedNetworkImage(
                            //   fit: BoxFit.cover,
                            //   imageUrl:
                            //       "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            //   placeholder: (context, url) => Shimmer.fromColors(
                            //       baseColor: context.theme.secondary!,
                            //       highlightColor: Colors.white,
                            //       child: CircleAvatar(
                            //         backgroundColor: context.theme.secondary,
                            //       )),
                            //   errorWidget: (context, url, error) =>
                            //       const Icon(Icons.image_not_supported_rounded),
                            // ),
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
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => const UploadImagePage(),
                          //   ),
                          // );
                        },
                        child: Text(
                          "EDIT",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: context.theme.secondary),
                        )),
                  ),
                  Positioned(
                    top: 65,
                    right: MediaQuery.of(context).size.width / 2 - 70,
                    child: CircleAvatar(
                      backgroundColor: context.theme.secondary,
                      radius: 13,
                      // child: Icon(
                      //   // isverified ? Icons.verified : Icons.cancel_outlined,
                      //   // color: isverified ? Colors.green : Colors.red,
                      // ),
                    ),
                  )
                ],
              ),
            ),
                    const SizedBox(height: 20), 

                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                          " Basic Details",
                                          style:Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color:Colors.black),
                                        ),
                                  ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(20).copyWith(left: 0, bottom: 0,right: 0),
                  decoration: BoxDecoration(
                      color: context.theme.primary,
                      borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            
                         ListView.builder(
                    shrinkWrap: true,
                    itemCount: detailsList.length,
                    itemBuilder: (context, index) {
                      final detail = detailsList[index].split(":");
                      final key = detail[0].trim();
                      final value = detail[1].trim();
                          int flexValue =4;
                  
                      return Container(
                        margin:  const EdgeInsets.only(bottom: 14),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                key,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                            const Text(
                              ":  ",
                              style: TextStyle(fontSize: 16),
                            ),
                            Expanded(
                             flex: flexValue,
                              child: Text(
                                 value,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  
                            
                          ],
                      
                    ),
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// doctor_details_list.dart

List<String> detailsList = [
  "Name: Dr Smith",
  "Address:Westheimer Rd. Santa Ana, Illinois 85486",
  "Phone:(603) 555-0123, (704) 555-0127",
  "Email:smith@gmail.com",
  "Gender:Male",
  "Date of Birth:05/09/1989",
  "Height:160cm",
  "Weight:50Kg"
];

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/configure/assets_manage/images.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/home/presentation/book_appoiment_category_list.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';
import '../../../features/home/presentation/available_doctor_list.dart';
import '../../../features/home/presentation/bloc/home_bloc.dart';
import '../../../features/home/presentation/home_search.dart';
import '../../../features/home/presentation/self_check_card.dart';
import '../../../features/home/presentation/self_checkup_video_card.dart';
import '../../../features/widgets/avatar/active_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.getHomeAvailableDoctor());
    });
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: CustomScrollView(
        slivers: [
          MultiSliver(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
                        .copyWith(top: 0),
                width: double.maxFinite,
                color: context.theme.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ActiveAvatar(
                      isActive: false,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(color: Colors.white, fontSize: 20)),
                        const SizedBox(height: 4),
                        FutureBuilder(
                            future: getFromSS(mailsecureStoreKey),
                            builder: (context, sn) {
                              return Text(
                                "How are you, ${sn.data.toString()}!",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              );
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SliverPinnedHeader(child: HomeSearchWidget()),
          MultiSliver(children: [
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: const Color(0xffE9DBFA),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Image.asset(AppImg.box)),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kevell care Health kit",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: context.theme.textPrimary)),
                          const SizedBox(height: 8),
                          Text(
                              "All details and tutorial about Kevell care health kit",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: context.theme.textSecondary,
                                      fontSize: 12)),
                          const SizedBox(height: 5),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: context.theme.backround,
                              foregroundColor: context.theme.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              "See More",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: Color(0xffA76FEC),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Book your Appointment",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const BookAppimentCategoryList(),
            const SelfCheckupVideoCard(),
            const SelfCheckCard(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Today Doctor Availabilty",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ]),
          const AvailableDoctorList(),
        ],
      ),
    );
  }
}

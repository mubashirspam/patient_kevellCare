import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/configure/assets_manage/images.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/home/presentation/book_appoiment_category_list.dart';
import 'package:kevell_care/features/home/presentation/pages/all_doctor_screen.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../available_doctor_list.dart';
import '../bloc/home_bloc.dart';
import '../widgets/home_search.dart';
import '../self_check_card.dart';
import '../self_checkup_video_card.dart';
import '../../../widgets/avatar/active_avatar.dart';

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
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hi, Mubashir",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: Colors.white, fontSize: 22)),
                        const SizedBox(height: 5),
                        Text(
                          "Your health is in perfect condition! ✨",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.white,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SliverPinnedHeader(child: HomeSearchWidget()),
          MultiSliver(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20)
                  .copyWith(bottom: 20),
              child: Row(
                children: [
                  Text(
                    "Top Doctor",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AllDoctorScreen()));
                    },
                    child: Text(
                      "See More",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: context.theme.primary),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: context.theme.primary,
                  )
                ],
              ),
            ),
          ]),
          const AvailableDoctorList(),
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
          ]),
        ],
      ),
    );
  }
}

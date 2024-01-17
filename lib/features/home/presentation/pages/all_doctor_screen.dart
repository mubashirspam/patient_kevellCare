import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/loading_widget.dart';

import '../../../appoiments/presentation/pages/book_new_appoiment_screen.dart';
import '../../../widgets/error_widget.dart';
import '../../../widgets/input_field/search_field.dart';
import '../../data/models/available_doctor_model.dart';
import '../../data/models/medical_service_model.dart';
import '../bloc/home_bloc.dart';
import '../widgets/availabel_doctor_card.dart';
import '../widgets/medical_services.dart';

class AllDoctorScreen extends StatelessWidget {
  const AllDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.getHomeAvailableDoctor());
    });
    final List<MedicalServicesModel> medicalServices = medicalService;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.secondary),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: context.theme.primary,
              ),
            ),
          ),
        ),
        backgroundColor: context.theme.backround,
        centerTitle: false,
        title: Text(
          "Available Doctors",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          const SearchField(),
          // const CustomTextBox(),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MedicalServices(medicalServices: medicalServices),
          ),
          const SizedBox(height: 15),
          BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            if (state.isAvailableDoctorLoading) {
              return const LoadingWIdget();
            }
            if (state.hasAvailableDoctorData) {
              if (state.availableDoctors!.data!.isEmpty) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
                  child: const Text(
                    "No Appoiment Found",
                  ),
                );
              } else {
                return Expanded(
                    child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.availableDoctors!.data!.length,
                  itemBuilder: (context, i) => InkWell(
                    onTap: () => Navigator.of(context).pushNamed(
                        BookNewAppointmentScreen.routeName,
                        arguments: state.availableDoctors!.data![i]),
                    child: AvailableDoctorCard(
                      data: state.availableDoctors!.data![i],
                    ),
                  ),
                ));
              }
            }
            // return const AppErrorWidget();

            return Expanded(
                child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, i) => InkWell(
                onTap: () => Navigator.of(context).pushNamed(
                    BookNewAppointmentScreen.routeName,
                    arguments: state.availableDoctors!.data![i]),
                child: AvailableDoctorCard(
                  data: HomeAvailableDoctorModelDatum(
                    profileImagelink: i == 0
                        ? "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGF2YXRhcnxlbnwwfHwwfHx8MA%3D%3D"
                        : "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fHww",
                    username: i == 0 ? "Mubashir" : "Robin",
                  ),
                ),
              ),
            ));
          }),
        ],
      ),
    );
  }
}

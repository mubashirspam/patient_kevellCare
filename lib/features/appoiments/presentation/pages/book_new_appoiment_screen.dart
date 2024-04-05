import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';
import '../../../../core/helper/date.dart';
import '../../../../core/helper/toast.dart';
import '../../../home/data/models/available_doctor_model.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../widgets/input_field/input_field_widget.dart';
import '../../domain/entities/create_appoinments.dart';
import '../bloc/appoinmets_bloc.dart';
import '../widgets/date_list.dart';
import '../widgets/token_list.dart';
import 'checkout_page.dart';

class BookNewAppointmentScreen extends StatelessWidget {
  final AvailableDoctor doctorData;
  static const routeName = '/book-new-appoiment';
  BookNewAppointmentScreen({
    super.key,
    required this.doctorData,
  });

  final TextEditingController remarkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          centerTitle: false,
          title: Text(
            "Book an appointment",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 170,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        width: 130,
                        height: 130,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: ColoredBox(
                            color: Colors.grey.shade100,
                            child: Image.network(
                              fit: BoxFit.cover,
                              doctorData.profileImagelink ?? "",
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(
                                Icons.image_not_supported,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dr.${doctorData.name}",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            SizedBox(height: 5),
                            Text("${doctorData.specialist}",
                                style: Theme.of(context).textTheme.titleLarge),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                ...List.generate(
                                    4,
                                    (index) => const Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        )),
                                Text(
                                  " (1020)",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            Text(
                              "${doctorData.location}",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  final List<DateTime?> dateList =
                      doctorData.schedule!.map((e) => e.days).toList();
                  final List<int?> idList =
                      doctorData.schedule!.map((e) => e.id).toList();

                  int activeIndex = idList
                      .indexWhere((element) => element == state.scheduleId);

                  return DateListWidget(
                    dateList: dateList,
                    idList: idList,
                    activeIndex: activeIndex,
                  );
                },
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  List<Map<String, dynamic>> timeList = [];

                  List<Schedule> filteredObjects =
                      doctorData.schedule!.where((object) {
                    return object.id == state.scheduleId;
                  }).toList();

                  if (filteredObjects.isNotEmpty) {
                    List<String> formattedList = [];
                    List<Bookedtime> bookedtimeSlots =
                        filteredObjects.first.bookedtime ?? [];

                    if (bookedtimeSlots.isNotEmpty) {
                      for (var slot in bookedtimeSlots) {
                        DateTime startTime = slot.starttime!;
                        DateTime endTime = slot.endtime!;

                        String formattedSlot =
                            "${extractTime(startTime)} to ${extractTime(endTime)}";

                        formattedList.add(formattedSlot);
                      }
                      //  print("booked time === ${formattedList.toString()} ");
                    }

                    int timePerPatient = filteredObjects.first.timePerPatient!;
                    DateTime startTimeDt = filteredObjects.first.startTime!;
                    DateTime endTimeDt = filteredObjects.first.endTime!;

                    print(
                        "timePerPatient ==== ${filteredObjects.first.timePerPatient!}");
                    print(
                        "startTimeDt ==== ${filteredObjects.first.startTime!}");
                    print("endTimeDt ==== ${filteredObjects.first.endTime!}");

                    while (startTimeDt
                        .add(Duration(minutes: timePerPatient))
                        .isBefore(
                            endTimeDt.add(Duration(minutes: timePerPatient)))) {
                      DateTime endTimeSlotDt =
                          startTimeDt.add(Duration(minutes: timePerPatient));

                      String currentTimeSlot =
                          "${extractTime(startTimeDt)} to ${extractTime(endTimeSlotDt)}";

                      // print("currentTimeSlot ==== $currentTimeSlot");

                      bool foundMatch = formattedList.contains(currentTimeSlot);
                      //  print("foundMatch ==== $foundMatch");

                      timeList.add({
                        "startTime": startTimeDt,
                        "endTime": endTimeSlotDt,
                        "isBooked": foundMatch,
                      });

                      // print(timeList.toString());

                      startTimeDt = endTimeSlotDt;
                    }
                  }

                  int activeIndex = timeList.indexWhere(
                      (element) => element["startTime"] == state.startTime);

                  return TimeSlotWidget(
                    timeList: timeList,
                    activeIndex: activeIndex,
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20.0).copyWith(top: 0),
                child: TextFieldWidget(
                  hintText: "Remark",
                  keyboardType: TextInputType.name,
                  textEditingController: remarkController,
                  maxLines: 2,
                  validate: (j) {
                    return null;
                  },
                ),
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, homeState) {
                  return SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BlocConsumer<AppoinmetsBloc, AppoinmetsState>(
                        listener: (context, appointmentState) {
                          if (appointmentState.createData) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ChckoutPage(
                                checkoutDetails: appointmentState
                                    .createAppointmentData!.data!,
                                date: homeState.date,
                                doctorName: doctorData.name ?? "",
                                time:
                                    "${extractTime(homeState.startTime!)} to ${extractTime(homeState.endTime!)} ",
                              ),
                            ));
                          }
                          if (appointmentState.isError) {
                            Toast.showToast(
                                context: context,
                                message: "Choose another time slot");
                          }
                        },
                        builder: (context, state) {
                          return TextButtonWidget(
                            name: "Book an Appointment",
                            onPressed: () {
                              if (homeState.endTime != null &&
                                  homeState.scheduleId != null) {
                                context.read<AppoinmetsBloc>().add(
                                      AppoinmetsEvent.createAppoinments(
                                        appoinmentsPayload: AppointmentsPayload(
                                          appointmentDate: homeState.date,
                                          scheduleId: homeState.scheduleId!,
                                          appointmentStarttime:
                                              homeState.startTime,
                                          appointmentEndtime: homeState.endTime,
                                          doctorId: doctorData.id,
                                          amount: 1000,
                                          apptToken: homeState.token,
                                          reasonFormeetingDoctor:
                                              remarkController.value.text,
                                        ),
                                      ),
                                    );
                              } else {
                                return Toast.showToast(
                                    context: context,
                                    message: "Please select an a time slote",
                                    color: Colors.red);
                              }
                            },
                            isLoading: state.isCreateLoading,
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }
}

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/configure/value/secure_storage.dart';
import 'package:kevell_care/core/helper/toast.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/appoiments/domain/entities/create_appoinments.dart';
import 'package:kevell_care/features/appoiments/presentation/bloc/appoinmets_bloc.dart';

import '../../../configure/value/constant.dart';
import '../../../core/helper/date.dart';
import '../../../core/helper/date_formater.dart';
import '../../../core/helper/date_validater.dart';
import '../../home/data/models/available_doctor_model.dart';
import '../../home/presentation/bloc/home_bloc.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/calender/calnder.dart';
import '../../widgets/input_field/dropdown_field.dart';
import '../../widgets/input_field/input_field_widget.dart';

class BookNowWidget extends StatefulWidget {
  final int index;
  const BookNowWidget({
    required this.index,
    super.key,
  });

  @override
  State<BookNowWidget> createState() => _BookNowWidgetState();
}

class _BookNowWidgetState extends State<BookNowWidget> {
  String selectedLocation = "Please select location";
  void _showSelectionBottomSheet(
    BuildContext context,
    List<String> list,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 250,
          child: CupertinoPicker(
            itemExtent: 32,
            onSelectedItemChanged: (index) {
              setState(() {
                selectedLocation = list[index];
              });
            },
            children: list.map((v) {
              return Text(v);
            }).toList(),
          ),
        );
      },
    );
  }

  TextEditingController remarkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, homeState) {
        return SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          // padding: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date and Time",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: context.theme.textPrimary),
                  ),
                  const SizedBox(height: 15),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return TextFieldWidget(
                        hintText: "12/12/2023",
                        inputFormatters: [DateInputFormatter()],
                        keyboardType: TextInputType.datetime,
                        validate: DateValidator.validateDate,
                        textEditingController: TextEditingController(
                            text: dateFormatToddmmyyyy(state.date)),
                        suffixIcon: GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) =>
                                BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                return CustomDatePickerDialog(
                                  initialDate: state
                                          .availableDoctors!
                                          .data![widget.index]
                                          .data!
                                          .first
                                          .startdate ??
                                      DateTime.now(),
                                  firstDate: state
                                          .availableDoctors!
                                          .data![widget.index]
                                          .data!
                                          .first
                                          .startdate ??
                                      DateTime.now(),
                                  lastDate: state
                                          .availableDoctors!
                                          .data![widget.index]
                                          .data!
                                          .first
                                          .enddate ??
                                      DateTime.now(),
                                  onDateTimeChanged: (onDateTimeChanged) {
                                    context.read<HomeBloc>().add(
                                        HomeEvent.pickDate(
                                            date: onDateTimeChanged));

                                    Navigator.of(context).pop();
                                  },
                                );
                              },
                            ),
                          ),
                          child: Icon(
                            Icons.calendar_month,
                            color: context.theme.primary,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.hasAvailableDoctorData) {
                        List<DatumDatum> filteredObjects = state
                            .availableDoctors!.data![widget.index].data!
                            .where((object) {
                          return object.days == state.date;
                        }).toList();

                        List<DropdownMenuItem<String>> timeSlotItems = [];
                        List<String> timeSlotItemsString = [];

                        if (filteredObjects.isNotEmpty) {
                          List<String> formattedList = [];

                          List<Bookedtime> timeSlots =
                              filteredObjects.first.bookedtime ?? [];

                          if (timeSlots.isNotEmpty) {
                            for (var slot in timeSlots) {
                              DateTime startTime = slot.starttime!;
                              DateTime endTime = slot.endtime!;
                              String formattedSlot =
                                  "${extractTime(startTime)} to ${extractTime(endTime)}";
                              formattedList.add(formattedSlot);
                            }
                          }

                          int timePerPatient =
                              filteredObjects.first.timeperPatient ?? 0;

                          DateTime startTimeDt =
                              filteredObjects.first.starttime!;

                          DateTime endTimeDt = filteredObjects.first.endtime!;

                          log(filteredObjects.first.endtime!.toIso8601String());

                          while (startTimeDt
                              .add(Duration(minutes: timePerPatient))
                              .isBefore(endTimeDt
                                  .add(Duration(minutes: timePerPatient)))) {
                            DateTime endTimeSlotDt = startTimeDt
                                .add(Duration(minutes: timePerPatient));

                            String valueTimeSlot =
                                "$startTimeDt,$endTimeSlotDt";

                            String currentTimeSlot =
                                "${extractTime(startTimeDt)} to ${extractTime(endTimeSlotDt)}";
                            bool foundMatch = false;
                            if (formattedList.isNotEmpty) {
                              for (String item in formattedList) {
                                if (item == currentTimeSlot) {
                                  foundMatch = true;
                                  break;
                                }
                              }
                            }
                            if (!foundMatch) {
                              timeSlotItemsString.add(valueTimeSlot);
                              timeSlotItems.add(
                                DropdownMenuItem<String>(
                                 
                                  value: valueTimeSlot,
                                  child: Text(
                                    currentTimeSlot,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: context.theme.textPrimary,
                                        ),
                                  ),
                                ),
                              );
                            }

                            startTimeDt = endTimeSlotDt;
                          }
                        }

                        return Row(
                          children: [
                            // Expanded(
                            //   child: DropdownMenuWidget(
                            //     item: timeSlotItemsString.isNotEmpty ?timeSlotItemsString:["Please select a time"],
                            //     onSelected: (ww) {
                            //       if (ww != null) {
                            //         List<String> timestamps = ww.split(',');

                            //   log(timestamps.toString());
                            //         // context.read<HomeBloc>().add(
                            //         //       HomeEvent.pickTime(
                            //         //         endTime:
                            //         //             DateTime.parse(timestamps[0]),
                            //         //         startTime:
                            //         //             DateTime.parse(timestamps[1]),
                            //         //       ),
                            //         //     );
                            //       }
                            //     },
                            //   ),
                            // ),
                            Expanded(
                              child: IntrinsicWidth(
                                child: DropDownFiledWidet(
                                  hintText: "Time slot",
                                  items: timeSlotItems,
                                  onChanged: (ww) {
                                    List<String> timestamps = ww.split(',');

                                    log(timestamps.toString());

                                    context.read<HomeBloc>().add(
                                          HomeEvent.pickTime(
                                            endTime:
                                                DateTime.parse(timestamps[0]),
                                            startTime:
                                                DateTime.parse(timestamps[1]),
                                          ),
                                        );
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return Row(
                        children: [
                          Expanded(
                            child: DropDownFiledWidet(
                              hintText: "Time slot",
                              items: const [],
                              onChanged: (ww) {},
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Select place",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: context.theme.textPrimary),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      _showSelectionBottomSheet(context, locations);
                    },
                    child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: context.theme.inputFiled),
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(selectedLocation,
                                style: Theme.of(context).textTheme.titleLarge),
                            const Icon(Icons.arrow_drop_down)
                          ],
                        )),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Description",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: context.theme.textPrimary),
                  ),
                  const SizedBox(height: 15),
                  TextFieldWidget(
                    hintText: "Remark",
                    keyboardType: TextInputType.name,
                    textEditingController: remarkController,
                    maxLines: 9,
                    validate: (j) {
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextButtonWidget(
                          isLoading: false,
                          fgColor: context.theme.primary,
                          bgColor: context.theme.secondary,
                          onPressed: () {},
                          name: "Cancel",
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: BlocConsumer<AppoinmetsBloc, AppoinmetsState>(
                          listener: (context, appointmentState) {
                            if (appointmentState.createData) {
                              Toast.showToast(
                                  context: context,
                                  message:
                                      "Sucsessfully booked the appoinemnt");

                              Navigator.of(context).pop();
                            }
                            if (appointmentState.isError) {
                              Toast.showToast(
                                  context: context,
                                  message: "Choose another time slot");
                            }
                          },
                          builder: (context, appointmentState) {
                            return TextButtonWidget(
                              isLoading: appointmentState.isCreateLoading,
                              onPressed: () async {
                                if (homeState.endTime != null) {
                                  await getFromSS(drIdsecureStoreKey)
                                      .then((value) {
                                    if (value != null) {
                                      if (selectedLocation ==
                                          "Please select location") {
                                        return Toast.showToast(
                                            context: context,
                                            message:
                                                "Please select an a location",
                                            color: Colors.red);
                                      } else {
                                        context.read<AppoinmetsBloc>().add(
                                              AppoinmetsEvent.createAppoinments(
                                                appoinmentsPayload:
                                                    AppoinmentsPayload(
                                                  patientId: int.parse(value),
                                                  appointmentdate:
                                                      homeState.date,
                                                  appointmentendtime: homeState
                                                      .startTime!
                                                      .toIso8601String(),
                                                  appointmentlocation:
                                                      selectedLocation,
                                                  appointmentstarttime:
                                                      homeState.endTime!
                                                          .toIso8601String(),
                                                  doctorname: homeState
                                                      .availableDoctors!
                                                      .data![widget.index]
                                                      .username,
                                                  doctornameid: homeState
                                                      .availableDoctors!
                                                      .data![widget.index]
                                                      .id,
                                                  reasonformeetingdoctor:
                                                      remarkController
                                                          .value.text,
                                                ),
                                              ),
                                            );
                                      }
                                    }
                                  });
                                } else {
                                  return Toast.showToast(
                                      context: context,
                                      message: "Please select an a time slote",
                                      color: Colors.red);
                                }
                              },
                              name: "Submit",
                            );
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TimeSlotValue {
  final DateTime startTime;
  final DateTime endTime;

  TimeSlotValue({
    required this.startTime,
    required this.endTime,
  });
}

List<String> locations = [
  "Madurai",
  "Chennai",
  "Dindigul",
  "Ariyalur",
  "Coimbatore",
  "Chengalpattu",
  "Erode",
  "Dharmapuri",
  "Kallakurichi",
  "Kanchipuram",
  "Karur",
  "Krishnagiri",
  "Kanyakumari",
  "Mayiladuthurai",
  "Nagapattinam",
  "Namakkal",
  "Nilgiris",
  "Perambalur",
  "Pudukkottai",
  "Ranipet",
  "Salem",
  "Sivagangai",
  "Tenkasi",
  "Thanjavur",
  "Theni",
  "Thoothukudi",
  "Tiruchirappalli",
  "Tirunelveli",
  "Tirupattur",
  "Tiruppur",
  "Tiruvallur",
  "Tiruvannamalai",
  "Tiruvarur",
  "Vellore",
  "Viluppuram",
  "Ramanathapuram",
  "Cuddalore",
  "Virudhunagar",
];

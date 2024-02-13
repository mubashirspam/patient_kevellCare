import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/appoiments/presentation/bloc/appoinmets_bloc.dart';

import '../../../widgets/buttons/text_button_widget.dart';
import '../../../widgets/input_field/dropdown_field.dart';
import '../../../widgets/input_field/input_field_widget.dart';
import '../../data/models/appoiments_model.dart';
import '../../domain/entities/update_appoinments.dart';

class EditAppoinmentWidget extends StatefulWidget {
  final Appointment data;

  const EditAppoinmentWidget({
    super.key,
    required this.data,
  });

  @override
  State<EditAppoinmentWidget> createState() => _EditAppoinmentWidgetState();
}

class _EditAppoinmentWidgetState extends State<EditAppoinmentWidget> {
  List<DropdownMenuItem<String>> timeSlotItems = [];
  TextEditingController remarkController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  // @override
  // void didChangeDependencies() {
  //   int timePerPatient = widget.data. ?? 0;

  //   DateTime startTimeDt = widget.data!.starttime!;

  //   DateTime endTimeDt = widget.data!.endtime!;
  //   timeSlotItems.clear();
  //   while (startTimeDt
  //       .add(Duration(minutes: timePerPatient))
  //       .isBefore(endTimeDt.add(Duration(minutes: timePerPatient)))) {
  //     DateTime endTimeSlotDt =
  //         startTimeDt.add(Duration(minutes: timePerPatient));

  //     String valueTimeSlot = "$startTimeDt,$endTimeSlotDt";

  //     String currentTimeSlot =
  //         "${extractTime(startTimeDt)} to ${extractTime(endTimeSlotDt)}";
  //     // Format this as needed

  //     timeSlotItems.add(
  //       DropdownMenuItem<String>(
  //         value: valueTimeSlot,
  //         child: Text(
  //           currentTimeSlot,
  //           style: Theme.of(context).textTheme.bodyMedium!.copyWith(
  //                 color: context.theme.textPrimary,
  //               ),
  //         ),
  //       ),
  //     );

  //     startTimeDt = endTimeSlotDt;
  //   }
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: context.theme.backround),
        child: SingleChildScrollView(
          child: BlocConsumer<AppoinmetsBloc, AppoinmetsState>(
            listener: (context, state) {
              if (state.isUpdated && !state.isUpdateLoading && !state.hasData) {
                Navigator.pop(context);
                context.read<AppoinmetsBloc>().add(
                      const AppoinmetsEvent.getAppoinments(),
                    );
              }
            },
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Expanded(
                      child: DropDownFiledWidet(
                        hintText: "Select Time slot",
                        items: timeSlotItems,
                        onChanged: (ww) {
                          List<String> timestamps = ww.split(',');
                          context.read<AppoinmetsBloc>().add(
                                AppoinmetsEvent.pickTime(
                                  endTime: DateTime.parse(timestamps[1]),
                                  startTime: DateTime.parse(timestamps[0]),
                                ),
                              );
                        },
                      ),
                    ),
                  ]),
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
                  SizedBox(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButtonWidget(
                            fgColor: context.theme.primary,
                            bgColor: context.theme.secondary,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            name: "Cancel",
                            isLoading: false,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            child: TextButtonWidget(
                          onPressed: () async {
                            if (!state.isUpdateLoading) {
                              context.read<AppoinmetsBloc>().add(
                                    AppoinmetsEvent.updateAppoinments(
                                      appoinmetsPayload:
                                          UpdateAppoinmentsPayload(
                                        appointmentdate:
                                            widget.data.appointmentDate,
                                        endtime:
                                            state.endTime!.toIso8601String(),
                                        id: widget.data.id,
                                        starttime:
                                            state.startTime!.toIso8601String(),
                                        remark: remarkController.value.text,
                                      ),
                                    ),
                                  );
                            }
                          },
                          name: "Update",
                          isLoading: state.isUpdateLoading,
                        )),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

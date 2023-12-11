import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/configure/color/maian_color.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/rating/presentation/create_rating.dart';
import '../../../../core/helper/alert.dart';
import '../../../../core/helper/date.dart';
import '../../data/models/appoiments_model.dart';
import '../bloc/appoinmets_bloc.dart';
import 'edit_appoinment.dart';

class AppoimentCard extends StatelessWidget {
  final bool isPast;
  final Past data;

  const AppoimentCard({
    super.key,
    required this.isPast,
    required this.data,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.theme.secondary,
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(20).copyWith(bottom: 0, top: 15),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.theme.primary,
            ),
            child: Center(
              child: Text(
                formatDateForSchedule(data.appointmentdate!),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.doctorname!,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: context.theme.textPrimary,
                        ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${extractTime(data.appointmentstarttime!)} to ${extractTime(data.appointmentendtime!)}  ",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: context.theme.textPrimary,
                        ),
                  ),
                ],
              ),
            ),
          ),
          isPast
              ? const SizedBox()
              : InkWell(
                  onTap: () {  showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => EditAppoinmentWidget(
                         data: data,
                        ),
                      );},
                  child: Icon(Icons.edit_square, color: context.theme.primary)),
          const SizedBox(width: 15),
          InkWell(
              onTap: () {
                log(data.id.toString());
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return BlocBuilder<AppoinmetsBloc, AppoinmetsState>(
                      builder: (context, state) {
                        log(state.isDeleted.toString());
                        return MyCustomAlertDialog(
                          successMessage:
                              "Successfully deleted your appoinment.",
                          questionMesage:
                              'Are you sure you want to delete the appoinment?',
                          okPressed: () {
                            context.read<AppoinmetsBloc>().add(
                                  const AppoinmetsEvent.getAppoinments(),
                                );
                            Navigator.of(context).pop();
                          },
                          onPress: () {
                            context.read<AppoinmetsBloc>().add(
                                  AppoinmetsEvent.deleteAppoinments(
                                    id: data.id!,
                                  ),
                                );
                          },
                          isLoading: state.isDeleteLoading,
                          isCompleted: state.isDeleted,
                        );
                      },
                    );
                  },
                );
              },
              child:  Row(
                children: [
                  const  Icon(Icons.delete,
                   
                      color: MainConfigColorsDarkTheme.danger),
                      IconButton( onPressed: () {
                          showDialog(context: context, builder: (context)=>  CreateRating(
                        doctorName: data.doctorname??"",
                        appointmentid:data.id,
                        patientid:data.patientId
                      ));
                                                 log(data.patientId.toString());
                                                 log(data.id.toString());

                      }, icon:const Icon(Icons.star_border_outlined),
                      )
                ],
              ),
                  
        ),
        ],
      ),
    );
  }
}

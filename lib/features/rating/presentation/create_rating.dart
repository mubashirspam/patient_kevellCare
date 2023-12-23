import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/toast.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/rating/domain/entites/create-rating_payload.dart';
import 'package:kevell_care/features/rating/presentation/bloc/rating_bloc.dart';
import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';
import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';
import 'dart:developer';

class CreateRating extends StatefulWidget {
  final String? review;
  final String? rating;
  final String? doctorName;
  final int? appointmentid;
  final int? patientid;

  const CreateRating(
      {super.key,
      this.review,
      this.rating,
      this.doctorName,
      this.appointmentid,
      this.patientid});

  @override
  State<CreateRating> createState() => _CreateRatingState();
}

class _CreateRatingState extends State<CreateRating> {
  int selectedRating = 0;
  late TextEditingController reviewController;
  late TextEditingController ratingController;

  bool isButtonDisabled = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validateForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isButtonDisabled = false;
      });
    } else {
      setState(() {
        isButtonDisabled = true;
      });
    }
  }

  @override
  void initState() {
    ratingController = TextEditingController(text: widget.rating);

    reviewController = TextEditingController(text: widget.review);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      // content: BlocConsumer<RatingBloc, RatingState>(
      //   listener: (context, state)
      //    {
      //       if (state.hasData) {
      //                 //  final name=  state.createDoctorDetails!.data!.name;
      //                   Toast.showToast(
      //                     context: context,
      //                     message: "Rating Done successfully ",
      //                   );
      //                   Navigator.of(context).pop();
      //                 }
      //                 if (state.isError) {
      //                   Toast.showToast(
      //                     context: context,
      //                     message: "fill all details",
      //                   );
      //                 }

      //     },
      // builder: (context, state) {
      // return Form(
      //   key: _formKey,
      title: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                heightFactor: 1,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "",
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.image_not_supported_outlined),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(height: 10),
              Text(widget.doctorName ?? ""),
              const SizedBox(height: 10),
              const Text("Dentist"),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.theme.secondary),
                height: 85,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Rating your Experience",
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (index) {
                          return IconButton(
                            icon: Icon(
                              index < selectedRating
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              setState(() {
                                selectedRating = index + 1;
                              });
                            },
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('What you feel about Dr Eleanor Pena'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextButtonWidget(
                          name: "Good", onPressed: () {}, isLoading: false)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextButtonWidget(
                          name: "Better", onPressed: () {}, isLoading: false)),
                ],
              ),
              const SizedBox(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextButtonWidget(
                          name: "poor", onPressed: () {}, isLoading: false)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextButtonWidget(
                          name: "poor", onPressed: () {}, isLoading: false)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                  onChanged: (value) {
                    validateForm();
                  },
                  textEditingController: reviewController,
                  hintText: "Enter Your Feedback",
                  keyboardType: TextInputType.name,
                  validate: (_) {
                    return null;
                  }),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButtonWidget(
                        name: "Cancel",
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        isLoading: false),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: BlocConsumer<RatingBloc, RatingState>(
                      listener: (context, state)async {
   if (state.hasData) {
                      Toast.showToast(
                        context: context,
                        message: state.message ?? "",
                      );
                    }
                    if (state.isError) {
                      Toast.showToast(
                        context: context,
                        message: state.message ?? "          ",
                      );
                    }                },
                      builder: (context, state) {
                        return TextButtonWidget(
                          onPressed: isButtonDisabled
                              ? null
                              : () {if (_formKey.currentState!.validate()){
                                  context.read<RatingBloc>().add(
                                          RatingEvent.createrating(
                                              createRatingPayload: CreateRatingPayload(
                                        review: reviewController.value.text,
                                        rating: selectedRating,
                                        appoinmentId: widget.appointmentid ?? 0,
                                        patientId: widget.patientid ?? 0,
                                      )));
                                  log("rating==${selectedRating.toString()}");
                                  log(" review==${reviewController.toString()}");
                                }
                              },
                          name: 'Submit',
                          isLoading: state.isUpdateLoading,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    //       },
    //     ),
    //   );
  }
}

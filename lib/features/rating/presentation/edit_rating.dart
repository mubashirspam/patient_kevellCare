import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/toast.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/domain/entites/edit_rating_payload.dart';
import 'package:kevell_care/features/rating/presentation/bloc/rating_bloc.dart';
import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';
import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';

class EditRating extends StatefulWidget {
  final String? review;
  final String? rating;
  final String? doctorName;
  final int? appointmentid;

  const EditRating({
    Key? key, // Change is here
    this.review,
    this.rating,
    this.doctorName,
    this.appointmentid,

    // required this.editrating,
  }) : super(key: key);

  @override
  State<EditRating> createState() => _EditRatingState();
}

class _EditRatingState extends State<EditRating> {
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
      //   listener: (context, state) {
      //     if (!state.isLoading && state.isError) {
      //       Toast.showToast(
      //           context: context, message: "Error occurred, try again later");
      //     }

      //     if (!state.isLoading && state.hasData) {
      //       Toast.showToast(
      //           context: context, message: "Profile Updated Successfully");

      //       Navigator.of(context).pop();
      //     }
      //   },
      //   builder: (context, state) {
      content: Form(
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
                    "", // Replace with correct image URL
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.image_not_supported_outlined),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(widget.doctorName ?? ""),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.theme.secondary),
                height: 80,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Rating your Experience",
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                ratingController.text = (index + 1).toString();
                                validateForm();
                              });
                            },
                            child: Icon(
                              Icons.star,
                              color: (index + 1) <=
                                      int.parse(ratingController.text)
                                  ? Colors.amber
                                  : Colors.grey,
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('What you feel about Dr Eleanor Pena'),
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
                },
              ),
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
                      isLoading: false,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: BlocConsumer<RatingBloc, RatingState>(
                      listener: (context, state) {
                        if (!state.isLoading && state.isError) {
                          Toast.showToast(
                              context: context,
                              message: "Error occured try again later");
                        }
                        if (!state.isLoading && state.hasData) {
                          Toast.showToast(
                              context: context,
                              message: "thank you for your feedback");

                          Navigator.of(context).pop();
                        }
                      },
                      builder: (context, state) {
                        return TextButtonWidget(
                          onPressed: isButtonDisabled
                              ? null
                              : () {
                                  context
                                      .read<RatingBloc>()
                                      .add(RatingEvent.editRating(
                                          editRatingPayload: EditRatingPayload(
                                        review: reviewController.value.text,
                                        rating: int.parse(ratingController.value.text),
                                        id: widget.appointmentid ?? 0,
                                      )));
                                },
                          name: 'Submit',
                          isLoading: state.isLoading,
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
      // },
      // ),
    );
  }
}

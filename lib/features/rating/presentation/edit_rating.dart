
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/toast.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/rating/presentation/bloc/rating_bloc.dart';
import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';
import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';

void showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              heightFactor: 1,
              child: Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Padding(
                    padding: EdgeInsets.all(15),
                    child:
                        Image(image: AssetImage("assets/images/doctor.png"))),
              ),
            ),
            const SizedBox(height: 10),
            const Text('Dr. Eleanor Pena'),
            const Text('Lorem ipsum '),
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_border_outlined),
                        Icon(Icons.star_border_outlined),
                        Icon(Icons.star_border_outlined),
                        Icon(Icons.star_border_outlined),
                        Icon(Icons.star_border_outlined),
                      ],
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Good'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Better'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('poor'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('very poor'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TextFieldWidget(

              
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text('Close'),
                ),
                const SizedBox(
                  width: 10,
                ),
                BlocConsumer<RatingBloc, RatingState>(
                  listener: (context, state) {
                       if (!state.isLoading && state.isError) {
                Toast.showToast(
                  context: context,
                  message: state.message ?? "",
                );
              }

                  },
                  builder: (context, state) {
                    return TextButtonWidget(
                      onPressed: () {
                      //   context.read<RatingBloc>().add(
                      //   RatingEvent.rating(
                      //     rating: review.value.text,
                      //     reveiw: rating.value.text,
                      //   ),
                      // );
                      },
                      name: 'Submit',
                       isLoading: state.isLoading,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

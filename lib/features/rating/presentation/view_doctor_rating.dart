import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/toast.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/presentation/bloc/rating_bloc.dart';
import 'package:kevell_care/features/rating/presentation/edit_rating.dart';
import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';
import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';
import 'package:kevell_care/features/widgets/loading_widget.dart';

class DoctorRatingScreen extends StatelessWidget {
  const DoctorRatingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      
    int crossAxisCount = 1;

    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 2,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index)
             {
              return const RatingCard(
                title: 'Dr.Xavier',
                message:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..',
              );
            },
          ),
        ),
      ],
    );
  }
}

class RatingCard extends StatelessWidget {
  final String title;
  final String message;

  const RatingCard(
      {super.key, required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.theme.secondary,
      elevation: 1,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: BlocConsumer<RatingBloc, RatingState>(
                 listener: (context, state) async {
        if (state.unauthorized) {
          Toast.showToast(
            context: context,
            message: "Unauthrized",
          );
          
        } else if (state.isError) {
          Toast.showToast(context: context, message: "Network Error");
        }
      },
              builder: (context, state) {
                 
                  if (state.hasData) {
                    RatingModel getRating =
                        BlocProvider.of<RatingBloc>(context).state.ratingDetails!;
 return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const CircleAvatar(
                                  child: Image(
                                    image: AssetImage("assets/images/doctor.png"),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  title,
                                  style: Theme.of(context).textTheme.headlineSmall,
                                ),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(Icons.star_border_outlined),
                                Icon(Icons.star_border_outlined),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              message,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            const SizedBox(height: 16),
                          ],
                        );
                  }
                 return const Center(child: Text("No data Found"));

              }, 
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      showPopup(context);
                    },
                    icon: Icon(
                      Icons.edit_document,
                      color: context.theme.primary,
                    ))),
          ),
        ],
      ),
    );
  }
}


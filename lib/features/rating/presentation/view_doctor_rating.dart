import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/toast.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/presentation/bloc/rating_bloc.dart';
import 'package:kevell_care/features/rating/presentation/edit_rating.dart';

class DoctorRating extends StatelessWidget {
  const DoctorRating({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    int crossAxisCount = 1;
    return BlocBuilder<RatingBloc, RatingState>(
            builder: (context, state) {
              if(state.hasData){
                 return ListView.builder(  
                itemCount: state.ratingDetails!.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return  RatingCard(
                    review: state.ratingDetails!.data[index].reveiw,
                    rating: state.ratingDetails!.data[index].ratings,
                    doctorname:state.ratingDetails!.data[index].doctorName

                  );
                
                },
              ); 

              }
             return const Text("No data found");
            },
          );
  }
}

class RatingCard extends StatelessWidget {
  final String review;
  final int rating;
  final String doctorname;

  const RatingCard({super.key, required this.review, required this.rating, required this. doctorname, });
  

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
                    children:[
                      Row(
                        children: [
                          ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "",
                        errorBuilder: (context, error, stackTrace) =>
                           const Icon(Icons.image_not_supported_outlined),
                        fit: BoxFit.cover,
                      )),
                          const SizedBox(width: 8),
                          Text(
                            doctorname,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (index) {
                             return Icon(
                               Icons.star,
                               color: index < rating ? Colors.amber : Colors.grey,
                            );
                        }),),
                      const SizedBox(height: 8),
                      Text(
                        review,
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
                      showDialog(context: context, builder: (context)=> EditRating(
                        review: review,
                        rating: rating.toString(),
                        doctorName: doctorname,
                      ));
                      
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

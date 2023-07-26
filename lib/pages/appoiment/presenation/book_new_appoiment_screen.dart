import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import '../../../features/appoiments/presentation/book_appoinment_widget.dart';

class BookNewAppointmentScreen extends StatelessWidget {
  static const routeName = '/book-new-appoiment';
  const BookNewAppointmentScreen({super.key});

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
          "Book Now",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body:const BookNowWidget(),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: 4,
          itemBuilder: (context, index) {
            return const CardAppoint();
          },
        ),
        ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: 4,
          itemBuilder: (context, index) {
            return const CardAppoint();
          },
        ),
      ],
    );
  }
}

class CardAppoint extends StatelessWidget {
  const CardAppoint({Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(bottom: 15),
      color: context.theme.secondary,
      child: ListTile(
        leading: SizedBox(
          height: 50,
          width: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffA76FEC),
            ),
            padding: const EdgeInsets.only(top: 8),
            child: const Text(
              "04\nApr",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        title: const Text(
          "Dr. Arun Kumar",
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "13.00-15.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Upcoming",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 8,
                      color: Color(0xff000000),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffECC744),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle edit button pressed
                  },
                  icon:
                      const Icon(Icons.edit_calendar, color: Color(0xffA76FEC)),
                ),
                IconButton(
                  onPressed: () {
                    // Handle delete button pressed
                  },
                  icon: Icon(Icons.delete, color: Color(0xffEC766E)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

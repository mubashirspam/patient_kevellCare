import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookAppointmentCard extends StatelessWidget {
  final String name;
  final String iconName;
  const BookAppointmentCard({
    super.key,
    required this.iconName,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 1,
            right: 1,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 80,
              child: Center(
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Center(
            heightFactor: 1,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(iconName)),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'widgets/appoiments_card.dart';

class PastAppoimentList extends StatelessWidget {
  const PastAppoimentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: 4,
      itemBuilder: (context, index) {
        return const AppoimentCard(
          isPast: true,
        );
      },
    );
  }
}

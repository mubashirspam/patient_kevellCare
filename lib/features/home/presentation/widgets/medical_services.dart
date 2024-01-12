import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../data/models/medical_service_model.dart';

class MedicalServices extends StatelessWidget {
  const MedicalServices({
    Key? key,
    required this.medicalServices,
  }) : super(key: key);

  final List<MedicalServicesModel> medicalServices;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      mainAxisSpacing: 10,
    
      children: List.generate(
        medicalServices.length,
        (index) {
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: medicalServices[index].color,
                ),
                child: Image.asset(
                  medicalServices[index].image,
                  color: context.theme.backround,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image_not_supported_outlined),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                medicalServices[index].title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../configure/assets_manage/icons.dart';

class MedicalServicesModel {
  final Color color;
   final Color lightColor;
  final String title;
  final String image;

  MedicalServicesModel({
    required this.color,
    required this.title,
    required this.image,
    required this.lightColor,
  });
}

List<MedicalServicesModel> medicalService = [
  MedicalServicesModel(
    color: Colors.blue,
    lightColor: getLightColor(Colors.blue),
    title: "Consultation",
    image: AppIcons.stethoscope,
  ),
  MedicalServicesModel(
    color: Colors.purple,
    lightColor: getLightColor(Colors.purple),
    title: "Dental",
    image: AppIcons.teeth,
  ),
  MedicalServicesModel(
    color: Colors.red,
    lightColor: getLightColor(Colors.red),
    title: "Heart",
    image: AppIcons.heart,
  ),
  MedicalServicesModel(
    color: Colors.orange,
    lightColor: getLightColor(Colors.orange),
    title: "Hospitals",
    image: AppIcons.clinic,
  ),
  MedicalServicesModel(
    color: Colors.green,
    lightColor: getLightColor(Colors.green),
    title: "Medicines",
    image: AppIcons.medicine,
  ),
  MedicalServicesModel(
    color: Colors.cyan,
    lightColor: getLightColor(Colors.cyan),
    title: "Physician",
    image: AppIcons.care,
  ),
  MedicalServicesModel(
    color: Colors.pink,
    lightColor: getLightColor(Colors.pink),
    title: "Skin",
    image: AppIcons.bandage,
  ),
  MedicalServicesModel(
    color: Colors.amber,
    lightColor: getLightColor(Colors.amber),
    title: "Surgeon",
    image: AppIcons.syringe,
  ),
];

Color getLightColor(Color color) {
  return Color.fromARGB(
    color.alpha,
    (color.red * 1.5).round().clamp(0, 255),
    (color.green * 1.5).round().clamp(0, 255),
    (color.blue * 1.5).round().clamp(0, 255),
  );
}

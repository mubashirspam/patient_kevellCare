import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../core/helper/debouncer.dart';
import '../../home/presentation/bloc/home_bloc.dart';

class SearchField extends StatefulWidget {
  final double? margin;
  const SearchField({super.key, this.margin});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  Debouncer debouncer = Debouncer(
    milliseconds: 500, // Adjust the debounce time as needed
    action: () {
      //  context.read<HomeBloc>().add(HomeEvent.search(
      //     specialist: selectedSpecialist,
      //     location: selectedLocation,
      //   ));
    },
  );

  String selectedLocation = " location";
  String selectedSpecialist = "specialization";
  void _showSelectionBottomSheet(
      BuildContext context, List<String> list, bool isLocation) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 250,
          child: CupertinoPicker(
            itemExtent: 32,
            onSelectedItemChanged: (index) {
              if (isLocation) {
                setState(() {
                  selectedLocation = list[index];
                });
              } else {
                setState(() {
                  selectedSpecialist = list[index];
                  // context.read<HomeBloc>().add(HomeEvent.search(
                  //     specialist: selectedSpecialist,
                  //     location: selectedLocation));
                });
              }
            },
            children: list.map((v) {
              return Text(v);
            }).toList(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.theme.backround,
          boxShadow: [
            BoxShadow(
                blurRadius: 12,
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(4, 4))
          ]),
      height: 55,
      // margin: EdgeInsets.symmetric(horizontal: widget.margin ?? 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration:
            InputDecoration(border: InputBorder.none, hintText: "Search.."),
      ),
    );
  }

  Widget containerSection(Widget child) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.theme.backround,
            boxShadow: [
              BoxShadow(
                  blurRadius: 12,
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(4, 4))
            ]),
        height: 50,
        // margin: EdgeInsets.symmetric(horizontal: widget.margin ?? 20),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: child,
      );

  Widget loacationWidget() => InkWell(
        onTap: () {
          _showSelectionBottomSheet(context, locations, true);
        },
        child: SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(selectedLocation,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                const Icon(Icons.arrow_drop_down)
              ],
            )),
      );

  Widget specializationWidget() => InkWell(
        onTap: () {
          _showSelectionBottomSheet(context, specialists, false);
        },
        child: SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(selectedSpecialist,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                const Icon(Icons.arrow_drop_down)
              ],
            )),
      );
}

List<String> locations = [
  "Madurai",
  "Chennai",
  "Dindigul",
  "Ariyalur",
  "Coimbatore",
  "Chengalpattu",
  "Erode",
  "Dharmapuri",
  "Kallakurichi",
  "Kanchipuram",
  "Karur",
  "Krishnagiri",
  "Kanyakumari",
  "Mayiladuthurai",
  "Nagapattinam",
  "Namakkal",
  "Nilgiris",
  "Perambalur",
  "Pudukkottai",
  "Ranipet",
  "Salem",
  "Sivagangai",
  "Tenkasi",
  "Thanjavur",
  "Theni",
  "Thoothukudi",
  "Tiruchirappalli",
  "Tirunelveli",
  "Tirupattur",
  "Tiruppur",
  "Tiruvallur",
  "Tiruvannamalai",
  "Tiruvarur",
  "Vellore",
  "Viluppuram",
  "Ramanathapuram",
  "Cuddalore",
  "Virudhunagar",
];

List<String> specialists = [
  "Dentist",
  "Gynecologist/Obstetrician",
  "General Physician",
  "Dermatologist",
  "Homoeopath",
  "Ayurveda",
  "Ear-Nose-Throat (ENT) Specialist",
];

import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

class BookNewAppointmentScreen extends StatelessWidget {

    static const routeName = '/book-new-appoiment';
  const BookNewAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => (),
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
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body:  const SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        // padding: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.fromLTRB(13, 16, 13, 16),
        child: Column(
          children: [
            TextForm(suffixIcon: Icon(Icons.date_range),hintText: "date"),

          SizedBox(height: 12),
           Row(
             children: [
               Expanded(child: Dropdowm(hintText: "From",)),
               SizedBox(width: 12),
               Expanded(child: Dropdowm(hintText: 'To',)),
             ],
           ),
            SizedBox(height: 12),

            Row(
              children: [
                SizedBox(height: 12),
                Expanded(child: Dropdowm(hintText: "Day",)),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Text("Description",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child:TextForm(maxLines: 7),

                ),
              ],
            )
          ],

        ),
      ),
      ),

    );
  }
}
class Dropdowm extends StatelessWidget {
  final String hintText;
  const Dropdowm({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration:  InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),

        fillColor: const Color(0xFFEFEFEF),
        filled: true,
        hintText: hintText, // Date format as prefix text
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      items: [],
      onChanged: (_){},
    );
  }
}
class TextForm extends StatelessWidget {

  final int? maxLines;
  final Widget? suffixIcon;
  final String? hintText;
  const TextForm({super.key, this.maxLines,this.suffixIcon,this.hintText});

  @override
  Widget build(BuildContext context) {
    return   TextFormField(
      maxLines: maxLines,
      decoration:  InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
        fillColor: const Color(0xFFEFEFEF),
        filled: true,
        suffixIcon: suffixIcon, // Calendar icon as prefix
        hintText: hintText, // Date format as prefix text
        prefixStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}




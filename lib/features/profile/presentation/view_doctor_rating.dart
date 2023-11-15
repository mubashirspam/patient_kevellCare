import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/input_field/input_field_widget.dart';

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
                childAspectRatio:2,
              ),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const NotificationCard(
                  title: 'Dr.Xavier',
                  message: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..',
                );
              },
            ),
          ),
        ],
      
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String message;

  const NotificationCard(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const CircleAvatar(
                      
                      child:Image(image: AssetImage("assets/images/doctor.png"),),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
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
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: (){
                _showPopup(context);
                },
               icon: Icon(Icons.edit_document,
              color: context.theme.primary,))
            ),
          ),
        ],
      ),
    );
  }
}


  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
            heightFactor: 1,
            child: Container(
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child:Image(image: AssetImage("assets/images/doctor.png"))),
            ),
          ),
              SizedBox(height: 10),
              Text('Dr. Eleanor Pena'),
               Text('Lorem ipsum '),

              SizedBox(height: 10),
              Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.theme.secondary),
              height: 80,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Rating your Experience",
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_border_outlined),
                        Icon(Icons.star_border_outlined),
                        Icon(Icons.star_border_outlined),
                        Icon(Icons.star_border_outlined),
                        Icon(Icons.star_border_outlined),

                      ],
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
              Text('What you feel about Dr Eleanor Pena'),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Text('Good'),
                    ),
                  ),
                  SizedBox(width: 10,),
                     Expanded(
                       child: ElevatedButton(
                       onPressed: () {},
                     child: Text('Better'),
                      ),
                     ),
                ],
              ),
             SizedBox(height: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Text('poor'),
                    ),
                  ),
                  SizedBox(width: 10,),
                     Expanded(
                       child: ElevatedButton(
                       onPressed: () {},
                       child: Text('very poor'),
                         ),
                     ),
                ],
              ),
              SizedBox(height: 10,),
               TextFieldWidget(hintText: "Enter Your Feedback",
                keyboardType:TextInputType.name,
                 validate: (_){
               return null;
               }),
               SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text('Close'),
                    
                  ),
                  SizedBox(width: 10,),
                     ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text('Submit'),
              ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

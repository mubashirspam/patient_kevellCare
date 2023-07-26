import 'package:flutter/material.dart';

class HealthCard extends StatelessWidget {
  const HealthCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all( 16),
        color: const Color(0xffE6DBF3),
        child: SizedBox(
          width: 320,
          height: 401,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Container(
                      width: 80.25,
                      height: 80.25,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue, // Replace with your desired color
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
                        maxRadius: 30,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Patient Name',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff404040)),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Adrianne Palicki',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff808080),
                      ),
                    ),
                    const Row(
                      children: [
                        SizedBox(height: 20),
                        Padding(padding: EdgeInsets.only(left: 20, top: 40)),
                        Text(
                          'Age - ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff404040),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(padding: EdgeInsets.only(top: 40)),
                        Text(
                          '59',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff808080),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(padding: EdgeInsets.only(left: 30, top: 40)),
                        Text(
                          'Sex- ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff404040),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(padding: EdgeInsets.only(top: 40)),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff808080),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(padding: EdgeInsets.only(left: 10, top: 40)),
                        Text(
                          'Ph.no- ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff404040),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(padding: EdgeInsets.only(top: 40)),
                        Text(
                          'xxxxxx9022',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff808080),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(height: 20),
                        Padding(padding: EdgeInsets.only(left: 10, top: 40)),
                        Text(
                          'Address -',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff404040),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          '2972 Westheimer Rd. Santa Ana,\n Illinois 85486 ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff808080),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(height: 20),
                        Padding(padding: EdgeInsets.only(left: 10, top: 40)),
                        Text(
                          'Case history',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff404040),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(height: 20),
                        Padding(padding: EdgeInsets.only(left: 10, top: 40)),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n''Sagittis pharetra suspendisse nisl, et interdum. Morbi\nfames et justo, mauris, et, scelerisque in aenean odio.\nSed egestas quis pellentesque consectetur leo, proin est, \npellentesque lorem. In facilisis suspendisse asellus\ninteger varius lectus iaculis dignissim. ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff808080),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

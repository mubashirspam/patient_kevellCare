import 'package:flutter/material.dart';

class HealthInfo extends StatelessWidget {
  const HealthInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(top: 20),
        color: const Color(0xffE6DBF3),
        child: SizedBox(
          width: 320,
          height: 401,
          child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Align text to the left
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: const Text(
                        "All-over Patient Checkup History",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3E3E3E),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Text(
                                'From',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3E3E3E),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                width: 134,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'date',
                                    suffixIcon: const Icon(Icons.calendar_today,color: Color(0xffA76EEC)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text(
                                    'To',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E3E3E),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Container(
                                    width: 134,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'date',
                                        suffixIcon: const Icon(Icons.calendar_today,color: Color(0xffA76EEC)),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start, // Align text to the left
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(16),
                              child: const Text(
                                "02/04/2022, Sartuday",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3E3E3E),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "02:00 pm - 04:00pm",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff808080),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Icon(Icons.arrow_right)

                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                            height:2,
                            width:360,
                            color:Colors.grey,),),
                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(16),
                              child: const Text(
                                "02/04/2022, Sartuday",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3E3E3E),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "02:00 pm - 04:00pm",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff808080),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Icon(Icons.arrow_right)

                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                            height:2,
                            width:360,
                            color:Colors.grey,),),
                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(16),
                              child: const Text(
                                "02/04/2022, Sartuday",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3E3E3E),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "02:00 pm - 04:00pm",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff808080),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Icon(Icons.arrow_right)

                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                            height:2,
                            width:360,
                            color:Colors.grey,),),
                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(16),
                              child: const Text(
                                "02/04/2022, Sartuday",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3E3E3E),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "02:00 pm - 04:00pm",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff808080),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Icon(Icons.arrow_right)

                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                            height:2,
                            width:360,
                            color:Colors.grey,),),
                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(16),
                              child: const Text(
                                "02/04/2022, Sartuday",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3E3E3E),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "02:00 pm - 04:00pm",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff808080),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Icon(Icons.arrow_right)

                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                            height:2,
                            width:360,
                            color:Colors.grey,),),
                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(16),
                              child: const Text(
                                "02/04/2022, Sartuday",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3E3E3E),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "02:00 pm - 04:00pm",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff808080),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Icon(Icons.arrow_right)

                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                            height:2,
                            width:360,
                            color:Colors.grey,),),

                      ],
                    ),
                  ],
                ),
              ]
          ),
        )
    );
  }
}
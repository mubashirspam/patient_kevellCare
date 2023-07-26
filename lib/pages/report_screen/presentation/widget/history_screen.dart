import 'package:flutter/material.dart';

import '../../../../features/report/presentation/widget/healthinfo_widget.dart';
import '../../../../features/report/presentation/widget/historycard_widge.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          // backgroundColor:  const Color(0xffE6DBF3),
            appBar: AppBar(
              bottom: TabBar(
                padding: const EdgeInsets.only(left: 20, right: 20),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffA76FEC),
                ),
                indicatorColor: const Color(0xffE6DBF3), // Set the indicator color
                tabs: const [
                  Tab(
                    text: "Healthh",
                  ),
                  Tab(
                    text: "Reports",
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height - kToolbarHeight - kBottomNavigationBarHeight,
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        const HealthCard(),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            SizedBox(width: 20),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
                              maxRadius: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Health Info',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3E3E3E),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              const SizedBox(width: 15),
                              Container(
                                width: 328,
                                height: 47,
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
                                child: DropdownButton<String>(
                                  items: const [
                                    DropdownMenuItem<String>(
                                      value: 'Column 1',
                                      child: Text('Body Temperature'),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: 'Column 2',
                                      child: Text('BP'),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: 'Column 3',
                                      child: Text('BMI'),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    // Handle dropdown value change here
                                  },
                                  isExpanded: true,
                                  underline: Container(),
                                  icon: const Icon(Icons.arrow_drop_down),
                                  hint: const Text('Select a column'),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    const HealthInfo(),
                  ],
                ),




              ),
            )
        )
    );
  }
}

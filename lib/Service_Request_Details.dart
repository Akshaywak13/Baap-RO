import 'package:flutter/material.dart';
import 'package:ro_baap/OtherCode/bottom_navigation_bar.dart';
import 'package:ro_baap/OtherCode/dotted_divider.dart';

class ServiceRequestDetails extends StatefulWidget {
  const ServiceRequestDetails({super.key});

  @override
  State<ServiceRequestDetails> createState() => _ServiceRequestDetailsState();
}

class _ServiceRequestDetailsState extends State<ServiceRequestDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(height: 80.0, child: BottomNavBarV2()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 283,
                decoration: BoxDecoration(color: Color(0xffE4FAFF)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: Row(
                        children: [
                          Image.asset('assets/images/Group 12@2x.png'),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Hi',
                            style:
                                TextStyle(color: Color(0xff3B7F8F), fontSize: 19),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Ishika,',
                            style: TextStyle(
                                color: Color(0xff3B7F8F),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 1,
                                    color: Colors.white,
                                    spreadRadius: 3)
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 25.0,
                              backgroundImage:
                                  AssetImage('assets/images/akshay.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Divider(
                        indent: 30.0,
                        endIndent: 30.0,
                        color: Colors.white,
                        thickness: 3.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: Color(0xff61BACB),
                                  )),
                              Text(
                                'Water Purifier Servicing',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Machine No : 12038985896',
                                  style: TextStyle(color: Color(0xffAAAAAA)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Jan 23, 2023 10:20 PM',
                                  style: TextStyle(color: Color(0xff3B7F8F)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff61BACB)),
                                    onPressed: () {},
                                    child: Text(
                                      'In Progress',
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Technician',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xff3B7F8F),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      indent: 2.0,
                      endIndent: 30.0,
                      color: Color(0xffE4FAFF),
                      thickness: 2.0,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 90,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/akshay.png'))),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Anshumon Gupta',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Plumber',
                                  style: TextStyle(color: Color(0xff717171)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/Icon awesome-phone-square-alt.png',
                                ),
                                Text(
                                  '  +918689988686',
                                  style: TextStyle(color: Color(0xff717171)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/Icon awesome-whatsapp.png',
                                ),
                                Text(
                                  '  +91 8689988686',
                                  style: TextStyle(color: Color(0xff717171)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Updates",
                              style: TextStyle(color: Color(0xff3B7F8F)),
                            ),
                          ],
                        ),
                        Divider(
                          indent: 0.0,
                          endIndent: 30.0,
                          color: Color(0xff3B7F8F),
                          thickness: 1.0,
                        ),
                        Container(
                          // width: double.maxFinite,
                          height: 300,
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '19 Feb, 2022 10:20 AM',
                                          style:
                                              TextStyle(color: Color(0xffA7A7A7)),
                                        ),
                                        Text(
                                          'Technician has visited the office.',
                                          style:
                                              TextStyle(color: Color(0xff4B4B4B)),
                                        ),
                                        Text(
                                            'Service the water purifier and cleaned the tank'),
                                        SizedBox(
                                          height: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                  DottedLineDivider(
                                    height: 0.1,
                                    color: Color(0xff61BACB),
                                    dotRadius: 1.0,
                                    endIndent: 30,
                                    spacing: 2.0,
                                  ),
                      
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    )
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

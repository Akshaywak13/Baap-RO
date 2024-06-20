import 'package:flutter/material.dart';
import 'package:ro_baap/OtherCode/bottom_navigation_bar.dart';

class WaterSensors extends StatefulWidget {
  const WaterSensors({Key? key}) : super(key: key);

  @override
  State<WaterSensors> createState() => _WaterSensorsState();
}

class _WaterSensorsState extends State<WaterSensors> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(height:80.0, child: BottomNavBarV2()),
        body: Column(
          children: [
            Container(
              height: 345,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xffE4FAFF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Row(
                        children: [
                          Image.asset('assets/images/Group 12.png'),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Hi',
                            style: TextStyle(
                                color: Color(0xff3B7F8F), fontSize: 19),
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
                                  spreadRadius: 4,
                                )
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
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'current water tds',
                                style: TextStyle(
                                    color: Color(0xff726C6C), fontSize: 15),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Text(
                                'last reading at',
                                style: TextStyle(
                                    color: Color(0xff726C6C), fontSize: 15),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '129',
                                    style: TextStyle(
                                        fontSize: 60,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '24 May, 2023',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '9:20 AM',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              Text(
                                'Standard range',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff726C6C)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '60 - 260',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: Color(0xff23A8C4),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Your water is good to drink today',
                                    style: TextStyle(
                                        color: Color(0xff14A8C4),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent readings',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'All',
                      style: TextStyle(color: Color(0xff61BACB)),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Color(0xffB5D5DD),
            ),
            SizedBox(
              height: 5,
            ),

            Expanded(
              // height: 300,
              // width: double.maxFinite,
              child: ListView.builder(
                itemCount: 19,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Container(
                      height: 70,
                      width: 350,
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        color: Color(0xffE4FAFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '123',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '24 May 2023 11:30 AM',
                                  style: TextStyle(
                                    color: Color(0xff3B7F8F),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff61BACB),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Good',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // BottomNavBarV2(),
            // Container(height: 115, child: BottomNavBarV2()),
          ],
        ),
      ),
    );
  }
}

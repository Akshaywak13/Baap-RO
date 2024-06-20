import 'package:flutter/material.dart';
import 'package:ro_baap/OtherCode/bottom_navigation_bar.dart';

class NoSensorDetected extends StatefulWidget {
  const NoSensorDetected({super.key});

  @override
  State<NoSensorDetected> createState() => _NoSensorDetectedState();
}

class _NoSensorDetectedState extends State<NoSensorDetected> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:  Container(height: 80, child: BottomNavBarV2()),
        body: Column(
          children: [
            Container(
              height: 350,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.zero, color: Color(0xffE4FAff)),
              child: Column(children: [
                Row(children: [
                  Padding(padding: EdgeInsets.only(top: 100, left: 30)),
                  Image.asset(
                    'assets/images/Group 12.png',
                    height: 80.0,
                    width: 40.0,
                  ),
                  Padding(padding: EdgeInsets.only(top: 77, left: 19)),
                  Text(
                    "Hi Ishika,",
                    style: TextStyle(color: Color(0xff3B7F8F), fontSize: 19),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1, color: Colors.white, spreadRadius: 3)
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage('assets/images/akshay.png'),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 200,
                ),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Color(0xffF26600),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'We could not find the device',
                          style: TextStyle(
                              color: Color(0xffF26600),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            
          ],
        ),
        
      ),
      
    );
  }
}

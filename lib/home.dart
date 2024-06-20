import 'package:flutter/material.dart';
import 'package:ro_baap/OtherCode/bottom_navigation_bar.dart';
import 'package:ro_baap/Service_Request_Details.dart';
import 'package:ro_baap/userprofile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List image = [
    'assets/images/washer.png',
    'assets/images/paint.png',
    'assets/images/disconnect-line.png',
    'assets/images/toilet.png',
    'assets/images/broom.png'
  ];
  List text = ['Servicing', 'Painting', 'Electrical', 'Plumbing', 'Cleaning'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:  Container(height: 80, child: BottomNavBarV2()),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.zero,
                      color: Color(0xffE4FAff)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 100, left: 30)),
                          Image.asset(
                            'assets/images/Group 12.png',
                            height: 80.0,
                            width: 40.0,
                          ),
                          Padding(padding: EdgeInsets.only(top: 77, left: 19)),
                          Text(
                            "Hi Ishika,",
                            style: TextStyle(
                                color: Color(0xff3B7F8F), fontSize: 19),
                          ),
                          SizedBox(
                            width: 170,
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
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>UserProfile()));
                              },
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
                                },
                                child: CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage:
                                      AssetImage('assets/images/akshay.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "What would you like to ",
                                  style: TextStyle(fontSize: 20),
                                ),
                                // SizedBox(height:0.5,),
                                Row(
                                  children: [
                                    Text(
                                      "service",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'today?',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 135),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Color(0xff3B7F8F),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "Washing Machine",
                                      style: TextStyle(
                                          color: Color(0xff3B7F8F),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xff3B7F8F),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 85,
                  child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xffE4FBFF),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(image[index]))),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                text[index],
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        "Recent Requests",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'All',
                          style: TextStyle(color: Color(0xff61BACB)),
                        ))
                  ],
                ),
                SizedBox(height: 2.0),
                Divider(
                  color: Color(0xffB5D5DD),
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 10,
                ),

                // Column(
                //   children: [
                Expanded(
                  // width: double.maxFinite,
                  // height: 235,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0), // Adjust margin as needed
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffE4FAFF),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Water Purifier Servicing',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5),
                                    Text('Machine No : 12038985896',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xffAAAAAA))),
                                    SizedBox(height: 5),
                                    Text('Jan 23, 2023 10:20 PM',
                                        style: TextStyle(
                                            color: Color(0xff3B7F8F),
                                            fontSize: 15)),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceRequestDetails()));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff61BACB),
                                ),
                                child: Text('In Progress',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
               // Container(height: 80, child: BottomNavBarV2()),
              ],
            ),
            Positioned(
              top: 180,
              left: 210,
              child: Image.asset(
                'assets/images/urban-line-washer@2x.png',
                height: 190,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

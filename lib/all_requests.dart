import 'package:flutter/material.dart';
import 'package:ro_baap/OtherCode/bottom_navigation_bar.dart';
import 'package:ro_baap/OtherCode/mydrawer.dart';

class AllRequests extends StatefulWidget {
  const AllRequests({super.key});

  @override
  State<AllRequests> createState() => _AllRequestsState();
}

class _AllRequestsState extends State<AllRequests> {
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldkey,
      endDrawer:MyDrawer(),
      
      bottomNavigationBar: Container(height: 80.0, child: BottomNavBarV2()),
      body: Column(
        children: [
          Container(
            height: 100,
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
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Requests',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B7F8F)),
                ),
                // Image.asset(
                //   'assets/images/Icon feather-filter.png',
                // ),
                //Icon(Icons.filter_alt_outlined,color: Color(0xff3B7F8F),size: 30,),
                IconButton(
                    onPressed: () {
                      _scaffoldkey.currentState?.openEndDrawer();
                    },
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      color: Color(0xff3B7F8F),
                      size: 30,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            // width: double.maxFinite,
            // height: 235,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
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
                              Text('Machine No : 12038985896     ',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffAAAAAA))),
                              SizedBox(height: 5),
                              Text('Jan 23, 2023 10:20 PM',
                                  style: TextStyle(
                                      color: Color(0xff3B7F8F), fontSize: 15)),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff61BACB),
                           
                          ),
                          child: Text('In Progress',
                              style: TextStyle(color: Colors.white)),
                        ),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}

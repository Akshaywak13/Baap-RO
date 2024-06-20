import 'package:flutter/material.dart';
import 'package:ro_baap/OtherCode/bottom_navigation_bar.dart';

class QuickMenu extends StatefulWidget {
  const QuickMenu({super.key});

  @override
  State<QuickMenu> createState() => _QuickMenuState();
}

class _QuickMenuState extends State<QuickMenu> {
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
        bottomNavigationBar: Container(height: 80.0, child: BottomNavBarV2()),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 350,
                    //height: MediaQuery.of(context).size.height/3,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: Color(0xffE4FAff)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(top: 100, left: 30)),
                            Image.asset(
                              'assets/images/Group 12.png',
                              height: 80.0,
                              width: 40.0,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 77, left: 19)),
                            const Text(
                              "Hi Ishika,",
                              style: TextStyle(
                                  color: Color(0xff3B7F8F), fontSize: 19),
                            ),
                            const SizedBox(
                              width: 170,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1,
                                      color: Colors.white,
                                      spreadRadius: 3)
                                ],
                              ),
                              child: const CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage('assets/images/akshay.png'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 25),
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
                                        "Air conditioner",
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
                  const SizedBox(
                    height: 13,
                  ),
                  const Row(children: [
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
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 85,
                    child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffE4FBFF),
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(image[index]))),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  text[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Text(
                          "Recent Requests",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'All',
                            style: TextStyle(color: Color(0xff61BACB)),
                          ))
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  const Divider(
                    color: Color(0xffB5D5DD),
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffE4FAFF)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Water Purifier Servicing',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Machine No : 12038985896',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xffAAAAAA)),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Jan 23, 2023 10:20 PM',
                                          style: TextStyle(
                                              color: Color(0xff3B7F8F),
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xff61BACB),
                                      ),
                                      child: const Text(
                                        'In Progress',
                                        style: TextStyle(color: Colors.white),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffE4FAFF)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'AC Repairing',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Machine No : 11039',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xffAAAAAA)),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Jan 22, 2023 10:10 AM',
                                          style: TextStyle(
                                              color: Color(0xff3B7F8F),
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xff61BACB),
                                      ),
                                      child: const Text(
                                        'Completed',
                                        style: TextStyle(color: Colors.white),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              Positioned(
                top: 110,
                //right: 50,
                //left: 22, // Adjusted left position
                child: Image.asset(
                  'assets/images/air_conditioner_PNG73.png',
                  height: 300,
                  width: 430, // Adjusted width
                ),
              ),

              // The rest of your code remains unchanged

              //const BottomNavBarV2(),
            ],
          ),
        ),
      ),
    );
  }
}

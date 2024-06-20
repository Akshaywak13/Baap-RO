import 'package:flutter/material.dart';
import 'package:ro_baap/settingsscreen.dart';
import 'package:ro_baap/updatedetails.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffE4FAFF),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 15),
                    child: Column(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        },
                         icon:Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xff61BACB),)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.white,
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 70.0,
                              backgroundImage:
                                  AssetImage('assets/images/akshay.png'),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Color(0xff61BACB),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ishika Gandhi',
                          style: TextStyle(
                              color: Color(0xff3B7F8F),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Technician',
                          style: TextStyle(
                            color: Color(0xff3B7F8F),
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'ishika@gmail.com',
                          style: TextStyle(color: Color(0xff3B7F8F)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff61BACB),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Contact Details',
                            style: TextStyle(color: Color(0xffE4FAFF)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/Icon awesome-phone-square-alt.png',
                              color: Colors.white,
                            ),
                            Text(
                              '  +91 8689988686',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/Icon awesome-whatsapp.png',
                              color: Colors.white,
                            ),
                            Text(
                              ' +91 8689988686',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Expanded(
                      child: Container(
                        height:double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 30),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/pokit.png',
                                        color: Color(0xffE4FAFF),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Payments',
                                        style: TextStyle(
                                          color: Color(0xffE4FAFF),
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xffE4FAFF),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/setting.png',
                                        color: Color(0xffE4FAFF),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Settings',
                                        style: TextStyle(
                                          color: Color(0xffE4FAFF),
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 165,
                                      ),
                                      IconButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
                                      },
                                       icon: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xffE4FAFF),
                                      ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/profile.png',
                                        color: Color(0xffE4FAFF),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Profile Update',
                                        style: TextStyle(
                                          color: Color(0xffE4FAFF),
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),

                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const UpdateDetails(),
                                                ));
                                          },
                                          icon: const Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xffE4FAFF),
                                          )),
                                      // Icon(

                                      //   Icons.arrow_forward_ios,
                                      //   color: Color(0xffE4FAFF),

                                      // )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/alert.png',
                                        color: Color(0xffE4FAFF),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Privacy & Terms',
                                        style: TextStyle(
                                          color: Color(0xffE4FAFF),
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 95,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xffE4FAFF),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 70,
                                  ),
                                  Row(
                                    children: [
                                      // Icon(Icons.lock_open,color: Colors.white,),
                                      Image.asset(
                                        'assets/images/logout.png',
                                        color: Color(0xffE4FAFF),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Logout',
                                        style: TextStyle(
                                          color: Color(0xffE4FAFF),
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xffE4FAFF),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //     onPressed: () {
                    //       _showBottomSheet(context);
                    //     },
                    //     child: Text(
                    //       'Click',
                    //       selectionColor: Colors.black,
                    //     ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}

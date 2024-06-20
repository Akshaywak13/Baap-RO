import 'package:flutter/material.dart';

class UpdateDetails extends StatefulWidget {
  const UpdateDetails({super.key});

  @override
  State<UpdateDetails> createState() => _UpdateetailsState();
}

class _UpdateetailsState extends State<UpdateDetails> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController whatsappController = TextEditingController();

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
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff61BACB),
                        ))
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
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 30),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Profile Update',
                                          style: TextStyle(
                                              color: Color(0xffE4FAFF),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 47,
                                          width: 320,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE4FAFF)
                                                  .withOpacity(0.3),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              controller: nameController,
                                              style: TextStyle(color: Colors.white),
                                              // onChanged: (value){
                                              //   setState(() {
                                                  
                                              //   });
                                              // },
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Enter your name',
                                                  hintStyle: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 47,
                                          width: 320,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE4FAFF)
                                                  .withOpacity(0.3),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              controller: emailController,
                                              style: TextStyle(color: Colors.white),

                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Enter your Gmail',
                                                  hintStyle: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 47,
                                          width: 320,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE4FAFF)
                                                  .withOpacity(0.3),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              keyboardType: TextInputType.number,
                                              controller: phoneController,
                                              style: TextStyle(color: Colors.white),
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText:
                                                      'Enter phone number',
                                                  hintStyle: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 47,
                                          width: 320,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE4FAFF)
                                                  .withOpacity(0.3),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              style: TextStyle(color: Colors.white),
                                              keyboardType: TextInputType.phone,
                                              controller: whatsappController,
                                              decoration: InputDecoration(
                                                
                                                  border: InputBorder.none,
                                                  hintText:
                                                      'Enter whatsapp number',
                                                  hintStyle: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff3B7F8F),
                                    fixedSize: Size(100,40)
                                  ),
                                    onPressed: () {
                                      
                                      print('Youre name =$nameController');
                                       print('Youre Gmail =$nameController');
                                        print('Youre phone number =$nameController');
                                         print('Youre whatsapp number =$nameController');

                                        //  onPressed: () {
                                        //     Navigator.pop(
                                        //         context,
                                        //         MaterialPageRoute(
                                        //           builder: (context) =>
                                        //               const UserProfile(),
                                        //         ));
                                        //  };
                                    },
                                     child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 20),))
                              ],
                            ),
                          )),
                    ),
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

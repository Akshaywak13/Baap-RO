// import 'package:flutter/material.dart';

// class BookAService extends StatefulWidget {
//   const BookAService({super.key});

//   @override
//   State<BookAService> createState() => _BookAServiceState();
// }

// class _BookAServiceState extends State<BookAService> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                       Color(0xffFFFFFF),
//                       Color(0xffE3F9FE),
//                       Color(0xffE4FAFF),
//                   ],
//                   begin:FractionalOffset.topCenter,
//                   end: FractionalOffset.bottomCenter,
//                   )
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 25,left: 15),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Icon(Icons.arrow_back),
//                           SizedBox(width: 10,),
//                           Text('Book a Service',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
//                         ],
//                       ),
//                       Center(
//                         child: Padding(
//                           padding:EdgeInsets.all(20),
//                           child: Column(
//                             children: [
//                               ListView(
//                                 shrinkWrap: true,
//                                 children: [
//                                   Text('Product',style: TextStyle(color: Color(0xff61BACB)),),
//                                   SizedBox(height: 5,),
//                                   TextField(
//                                     decoration: InputDecoration(
//                                       focusedBorder:OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB),
//                                           width: 2,
//                                         )
//                                       ),
//                                       enabledBorder:OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB)
//                                         )
//                                       ),
//                                       suffixIcon:IconButton(onPressed: (){

//                                       },
//                                       icon:Icon(Icons.keyboard_arrow_down,color: Color(0xff61BACB),size: 30,)
                                      
//                                       ,)
//                                     ),
//                                   ),
//                                   SizedBox(height: 20,),
//                                   Text('Preferred Visit Date/Time',style: TextStyle(color: Color(0xff61BACB)),),
//                                   TextField(
//                                     decoration:InputDecoration(
//                                       focusedBorder:OutlineInputBorder(
//                                         borderRadius:BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB),
//                                           width: 2,
//                                         )
//                                       ),
//                                       enabledBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB),
//                                         )
//                                       ),
//                                       suffixIcon: IconButton(onPressed: (){

//                                       },
//                                       icon: Icon(Icons.calendar_today_outlined,color: Color(0xff61BACB),),
//                                       )
//                                     ),
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Text('Problem',style: TextStyle(color: Color(0xff61bACB)),),
//                                   TextField(
//                                     decoration: InputDecoration(
//                                       focusedBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB),
//                                           width: 2,
//                                         )
//                                       ),
//                                       enabledBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB)
//                                         )
//                                       ),
//                                       suffixIcon: IconButton(onPressed: (){},
//                                       icon:Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff61BACB),size: 30,),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Text('Remark',style: TextStyle(color: Color(0xff61BACB)),),
//                                   SizedBox(height: 5,),
//                                   TextField(
//                                     minLines:3, // any number you need (It works as the rows for the textarea)
//                                     keyboardType: TextInputType.multiline,
//                                     maxLines: null,
//                                     decoration: InputDecoration(
//                                       focusedBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB),
//                                           width: 2
//                                         )
//                                       ),
//                                       enabledBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB)
//                                         )
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 40,),
//                                   Text('Address',style: TextStyle(color: Color(0xff61BACB)),),
//                                   SizedBox(height: 5,),
//                                   TextField(
//                                     minLines: 3,
//                                     keyboardType: TextInputType.multiline,
//                                     maxLines: null,
//                                     decoration:InputDecoration(
//                                       focusedBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB),
//                                           width: 2,
//                                         )
//                                       ),
//                                       enabledBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                         borderSide: BorderSide(
//                                           color: Color(0xff61BACB)
//                                         )
//                                       )
//                                     ),
//                                   ),
//                                   SizedBox(height: 30,),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 200),
//                                     child: ElevatedButton(
//                                       style:ElevatedButton.styleFrom(
//                                         primary: Color(0xff61BACB),
//                                         minimumSize:Size(double.infinity,50)
//                                       ),
//                                       onPressed: (){},
//                                     child:Text('Book',style: TextStyle(color: Colors.white,))),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

class BookAService extends StatefulWidget {
  const BookAService({Key? key}) : super(key: key);

  @override
  State<BookAService> createState() => _BookAServiceState();
}

class _BookAServiceState extends State<BookAService> {
  DateTime? _selectedDateTime;

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? pickedDateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDateTime != null && pickedDateTime != _selectedDateTime) {
      setState(() {
        _selectedDateTime = pickedDateTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFFFFFF),
                      Color(0xffE3F9FE),
                      Color(0xffE4FAFF),
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Book a Service',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                'Product',
                                style: TextStyle(color: Color(0xff61BACB)),
                              ),
                              SizedBox(height: 5),
                              TextField(
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Color(0xff61BACB),
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Preferred Visit Date/Time',
                                style: TextStyle(color: Color(0xff61BACB)),
                              ),
                              TextField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                    ),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      _selectDateTime(context);
                                    },
                                    child: Icon(
                                      Icons.calendar_today_outlined,
                                      color: Color(0xff61BACB),
                                    ),
                                  ),
                                ),
                                controller: TextEditingController(
                                  text: _selectedDateTime != null
                                      ? _selectedDateTime!.toLocal().toString().split(' ')[0]
                                      : '',
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Problem',
                                style: TextStyle(color: Color(0xff61bACB)),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Color(0xff61BACB),
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Remark',
                                style: TextStyle(color: Color(0xff61BACB)),
                              ),
                              SizedBox(height: 5),
                              TextField(
                                minLines: 3,
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 40),
                              Text(
                                'Address',
                                style: TextStyle(color: Color(0xff61BACB)),
                              ),
                              SizedBox(height: 5),
                              TextField(
                                minLines: 3,
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff61BACB),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.only(left: 200),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff61BACB),
                                    minimumSize: Size(double.infinity, 50),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Book',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


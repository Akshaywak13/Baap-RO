

import 'package:flutter/material.dart';

class RegisterMachine extends StatefulWidget {
  const RegisterMachine({Key? key});

  @override
  State<RegisterMachine> createState() => _RegisterMachineState();
}

class _RegisterMachineState extends State<RegisterMachine> {

//Create the controller
TextEditingController ApplianceController =TextEditingController();
TextEditingController MakeController = TextEditingController();
TextEditingController ModelController =TextEditingController();
TextEditingController SerialNumberController = TextEditingController();
TextEditingController DateofManufacturingController = TextEditingController();
TextEditingController WaranteeExpiresonontroller = TextEditingController();

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
                  
                    end: FractionalOffset.bottomCenter,
                      begin: FractionalOffset.topCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:30.0,left: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back,color:Colors.black,),
                          SizedBox(width: 10,),
                          Text('Register an appliance',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              ListView(
                                shrinkWrap: true,
                                children: [
                                  Text('Appliance',style: TextStyle(color: Color(0xff61BACB)),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    controller: ApplianceController,
                                    decoration: InputDecoration(
                                      focusedBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB)
                                        )
                                      ),
                                      enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB),width: 2
                                        )
                                      ),
                                      suffixIcon: IconButton(onPressed: (){
                                        
                                      },
                                      icon:Icon(Icons.keyboard_arrow_down,color: Color(0xff61BACB),size: 35,))
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                    Text('Make',style: TextStyle(color: Color(0xff61BACB)),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    controller: MakeController,
                                    decoration: InputDecoration(
                                      focusedBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB)
                                        )
                                      ),
                                      enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB),width: 2
                                        )
                                      ),
                                      suffixIcon: IconButton(onPressed: (){
                                        
                                      },
                                      icon:Icon(Icons.keyboard_arrow_down,color: Color(0xff61BACB),size: 35,))
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                    Text('Model',style: TextStyle(color: Color(0xff61BACB)),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    controller: ModelController,
                                    decoration: InputDecoration(
                                      focusedBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB)
                                        )
                                      ),
                                      enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB),width: 2
                                        )
                                      ),
                                      suffixIcon: IconButton(onPressed: (){
                                        
                                      },
                                      icon:Icon(Icons.keyboard_arrow_down,color: Color(0xff61BACB),size: 35,))
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                    Text('Serial Number',style: TextStyle(color: Color(0xff61BACB)),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    controller: SerialNumberController,
                                    decoration: InputDecoration(
                                      focusedBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB)
                                        )
                                      ),
                                      enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB),width: 2
                                        )
                                      ),
                                      
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                    Text('Date of Manufacturing',style: TextStyle(color: Color(0xff61BACB)),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    controller: DateofManufacturingController,
                                    decoration: InputDecoration(
                                      focusedBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB)
                                        )
                                      ),
                                      enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB),width: 2
                                        )
                                      ),
                                      
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                    Text('Warantee Expires on',style: TextStyle(color: Color(0xff61BACB)),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    controller: WaranteeExpiresonontroller,
                                    decoration: InputDecoration(
                                      focusedBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB)
                                        )
                                      ),
                                      enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Color(0xff61BACB),width: 2
                                        )
                                      ),
                                      
                                    ),
                                  ),
                                  
                                  Padding(padding: EdgeInsets.only(top: 45)),
                                  Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 200),
                                        child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary:Color(0xff61BACB),
                                            minimumSize: Size(double.infinity,50),
                                        ),
                                        onPressed: (){
                                        print(ApplianceController.text);
                                        print(MakeController.text);
                                        print(ModelController.text);
                                        print(SerialNumberController.text);
                                        print(DateofManufacturingController.text);
                                        print(WaranteeExpiresonontroller.text);
                                        },
                                        child:Text('Save',style: TextStyle(color: Colors.white),)),
                                      ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

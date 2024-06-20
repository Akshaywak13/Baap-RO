import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ro_baap/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage(),));
    
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors:[
              Color(0xffC3F4FF),
              Colors.white,
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.center,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:250 ),
          child: Column(
            children: [
              Image.asset('assets/images/Group 15@2x.png',height: 100.0,width: 200.0,),
              Text("SUPER SERVICE APP",style: TextStyle(color: Color(0xff5BA0B1)),),
              SizedBox(height: 10,),
              Text('BY',style: TextStyle(color: Color(0xff5BA0B1)),),
              SizedBox(height: 5,),
              Text(' the baap company',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
              SizedBox(height: 20,),
            Expanded(child: Image.asset('assets/images/Group 11@2x.png',fit: BoxFit.cover,))
            ],
            
          ),
          
        ),
        
      
      ),
      
    );
  }
}
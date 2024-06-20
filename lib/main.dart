import 'package:flutter/material.dart';
import 'package:ro_baap/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home:
      //SettingsScreen()
      //UserProfile()
      //AllRequests()
      //NoSensorDetected()
      //WaterSensors(),
      //ServiceRequestDetails()
      //BookAService()
      //RegisterMachine()
     // QuickMenu(),
     // Appliances(),
      //HomePage(),
     SplashScreen(),
    );
  }
}

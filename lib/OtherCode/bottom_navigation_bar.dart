import 'package:flutter/material.dart';
import 'package:ro_baap/all_requests.dart';
import 'package:ro_baap/home.dart';
import 'package:ro_baap/userprofile.dart';
import 'package:ro_baap/water_sensors.dart';



class BottomNavBarV2 extends StatefulWidget {
  const BottomNavBarV2({super.key});

  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(55),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                clipBehavior: Clip.none, children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),

                  
                  Center(
                    heightFactor: 0.2,
                    child: FloatingActionButton(backgroundColor:  Color(0xffE4FAFF),
                      child: Icon(Icons.add), elevation: 0.5,
                      onPressed: () {
                        
                      }),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.list,size: 30.0,
                            color: currentIndex == 0 ? Color(0xffE4FAFF) : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.auto_awesome_mosaic_rounded,size: 30.0,
                              color: currentIndex == 1 ?  Color(0xffE4FAFF) : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(1);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AllRequests()));
                            }),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.water_drop_sharp,size: 30.0,
                              color: currentIndex == 2 ? Color(0xffE4FAFF) : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(2);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>WaterSensors()));
                            }),
                        IconButton(
                            icon: Icon(
                              Icons.settings,size: 30.0,
                              color: currentIndex == 3 ?  Color(0xffE4FAFF) : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(3);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Color(0xff61BACB)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0,-15); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(40.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, -55);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
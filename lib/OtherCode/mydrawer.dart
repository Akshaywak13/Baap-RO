import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color(0xff61BACB),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Filters',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xffC2E9F2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SearchBar(
                  hintText: 'Search by Request',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xffC2E9F2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 15),
                  child: Center(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Water Purifiers',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xffC2E9F2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 15),
                  child: Center(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Completed',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35,),
              ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff4293A3),
                  fixedSize: Size(110,45)
                ),
                onPressed: (){},
              child:Text('Apply',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),))
            ],
          ),
        ));
  }
}

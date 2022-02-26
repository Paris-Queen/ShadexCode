
import 'package:dot_appointment/widgets.dart';import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'doctor_model.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
 static int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  Widgets vent = Widgets();
  Present represent = Present();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            vent.welcome(),
            SizedBox(height: 25,),
            vent.appointment(context),
            SizedBox(height: 20,),
            vent.services(),
            SizedBox(height: 18,),
            vent.nearDoctor(),
            SizedBox(height: 14,),
            Container(
              height: 230,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: represent.items.length,
                separatorBuilder: (context,_)=>SizedBox(width: 20,),
                itemBuilder: (context, index)=>vent.buildCard(represent.items[index]),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.black26,
      showUnselectedLabels: false,
      items: [
      BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'Home'
    ),
    BottomNavigationBarItem(
           icon: Icon(Icons.schedule),
            label: 'Schdule'
    ),
    BottomNavigationBarItem(
           icon: Icon(Icons.chat),
           label: 'Chat'
    ),
    BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile'
    ),
    ],
    )

    );
  }
}

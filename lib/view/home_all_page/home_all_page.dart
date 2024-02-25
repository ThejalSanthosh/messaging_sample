import 'package:flutter/material.dart';
import 'package:message_clone/view/chat_screen/chat_screen.dart';
import 'package:message_clone/view/profile_screen/profile_screen.dart';

class HomePageAll extends StatefulWidget {
  const HomePageAll({super.key});

  @override
  State<HomePageAll> createState() => _HomePageAllState();
}

class _HomePageAllState extends State<HomePageAll> {
    int bottomIndex = 2;
List pages=[ProfileScreen(),ProfileScreen(),HomeScreen(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        title: Text("Message",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),)
        ,centerTitle: true,
      ),

body: pages[bottomIndex],

       bottomNavigationBar: BottomNavigationBar(
      currentIndex: bottomIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      items:[BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.punch_clock_outlined),label: "Clock"),BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
    BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile")
    ],
    onTap: (value) {
      
      setState(() {
        bottomIndex=value;
      });
    },
    ),


    );
  }
}
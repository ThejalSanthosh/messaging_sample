import 'package:flutter/material.dart';
import 'package:message_clone/dummydb.dart';
import 'package:message_clone/view/chat_tap_screen/chat_tap_screen.dart';
import 'package:message_clone/view/chat_screen/widgets/active_now.dart';
import 'package:message_clone/view/chat_screen/widgets/message_load.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
            children: [
              TextField(
                           
               decoration: InputDecoration(
                        
              hintText: "Search a Doctor",
              hintStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Icons.search),
              filled: true,
              suffixIcon: Icon(Icons.mic),
                        border:  OutlineInputBorder(
              
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                   borderSide: BorderSide.none
                  ),
          ),            
              ),
              SizedBox(height: 20,),
      
      Text("Active Now",style: TextStyle(color: Colors.black,fontFamily: AutofillHints.countryName,fontWeight: FontWeight.bold,fontSize: 18),),
      SizedBox(height: 20,),
      
      SizedBox(
        height: 50,
        child: ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => ActiveNow(profilePic: DummyDb.activeNow[index]["profilePic"]) , separatorBuilder: (context, index) => SizedBox(width: 20,), itemCount: DummyDb.activeNow.length),
      )
      ,    SizedBox(height: 20,),
      Text("Messages",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),),
      SizedBox(height: 20,),
      
      
      ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
         itemCount: DummyDb.dummyChat.length,
        itemBuilder: (context, index) => MessageLoad(name: DummyDb.dummyChat[index]["userName"], message: DummyDb.dummyChat[index]["messages"], 
        time: DummyDb.dummyChat[index]["time"], profilePic: DummyDb.dummyChat[index]["profilePic"], count: DummyDb.dummyChat[index]["count"]) , separatorBuilder: (context, index) => SizedBox(height: 10,),)
      
      
            ],
        
        ),
      ),
    );

  }
}
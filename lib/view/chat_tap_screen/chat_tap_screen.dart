import 'package:flutter/material.dart';
import 'package:message_clone/dummydb.dart';
import 'package:message_clone/view/chat_tap_screen/widgets/message_seen/message_seen.dart';


class ChatTapScreen extends StatefulWidget {

  const ChatTapScreen({super.key, required this.user});

  final String user;

  @override
  State<ChatTapScreen> createState() => _ChatTapScreenState();
}

class _ChatTapScreenState extends State<ChatTapScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Text(widget.user,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),
        ),centerTitle: true,

        actions: [
          CircleAvatar(
            
            radius: 14,
          child: Icon(Icons.search,color: Colors.black,),  
          ),SizedBox(width: 20,),
          CircleAvatar(
                        radius: 14,

          child: Icon(Icons.video_call_outlined,color: Colors.black),  
          ),SizedBox(width: 20,),
          
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
        
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) => MessageSeen(text: DummyDb.sampleMessage[index]["text"], isSender: DummyDb.sampleMessage[index]["isSender"]), separatorBuilder: (context, index) => SizedBox(height: 20,), 
              itemCount: DummyDb.sampleMessage.length),
            ),
            SizedBox(height: 5,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                   Expanded(
               child: TextField(
               
               decoration: InputDecoration(
                        
              hintText: "Write here",
              hintStyle: TextStyle(color: Colors.black),
              prefixIcon: IconButton(onPressed: () {
                
              }, icon: Icon(Icons.emoji_emotions_outlined),color: Colors.black,),
              
              filled: true,
              suffixIcon: IconButton(onPressed: () {
                
              }, icon: Icon(Icons.camera_alt_outlined,color: Colors.black,)),
              border:  OutlineInputBorder(
              
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                   borderSide: BorderSide.none
                  ),
              
              ),
                        
          ), 

             ),

              SizedBox(width: 10,),

                IconButton.filled(
                  iconSize: 40,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  padding:  EdgeInsets.all(12),
                  onPressed: () {},
                  icon: Icon(Icons.send),
                ),
                 SizedBox(width: 4),
          ],
            ),
        
          ],
        ),
      )          
    );
  }
}
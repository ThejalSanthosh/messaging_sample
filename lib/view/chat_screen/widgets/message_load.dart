import 'package:flutter/material.dart';
import 'package:message_clone/view/chat_tap_screen/chat_tap_screen.dart';

class MessageLoad extends StatelessWidget {
  const MessageLoad({super.key, required this.name, required this.message, required this.time, required this.profilePic, required this.count});

  final String name;
  final String message;
  final String time;
  final String profilePic;
  final int count;

  @override
  Widget build(BuildContext context) {
    return InkWell(


 onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatTapScreen(user: name),));
        },

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
              decoration: BoxDecoration(
      color: const Color.fromARGB(255, 238, 238, 238),
      borderRadius: BorderRadius.circular(10),
        ),
               
         child: Row(
          children: [CircleAvatar(
            backgroundImage: NetworkImage(profilePic),
            radius: 28,
          ),
          SizedBox(width: 14,),
          Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
      
            children: [
            Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            count>0?
            Text(message,style:TextStyle(color:Colors.blue,)):
            Text(message,style:TextStyle(color:Colors.black,))
          ],),Spacer(),
      
          Column(
            children: [
              Text(time),SizedBox(height: 8,),
              Visibility(
                visible: count>0 ?true:false,
                child: CircleAvatar(
                
                  radius: 9,
                  backgroundColor: Colors.blue,
                  child: Text(count.toString(),style: TextStyle(fontSize: 12,color: Colors.white),)
                ),
              )
            ],
          )
          
          ],
         ),
      
      ),
    );
  }
}
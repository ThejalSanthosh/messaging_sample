import 'package:flutter/material.dart';

class MessageSeen extends StatelessWidget {
  const MessageSeen({super.key, required this.text, required this.isSender});
  final String text;
  final bool isSender;

  @override
  Widget build(BuildContext context) {
   return Align(
      alignment: isSender
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: isSender
              ? Colors.blue
              : const Color.fromARGB(255, 207, 203, 203),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSender ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
  
}
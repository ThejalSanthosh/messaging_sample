import 'package:flutter/material.dart';

class ActiveNow extends StatelessWidget {
  const ActiveNow({super.key, required this.profilePic});
  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(profilePic),
        ),

        Positioned(
          top: 2,
          right: 2,
          child: CircleAvatar(radius: 8,backgroundColor: Colors.green,))
      ],
    );
  }
}
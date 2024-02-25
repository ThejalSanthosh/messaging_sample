import 'package:flutter/material.dart';
import 'package:message_clone/view/home_all_page/home_all_page.dart';

void main(){
runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageAll(),
    );
  }
}
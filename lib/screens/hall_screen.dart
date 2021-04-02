import 'package:flutter/material.dart';

class HallScreen extends StatelessWidget{
  int index;
  HallScreen(int i){
    index = i;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Hall Screen')),
      body: Center(child: Text('Hall number $index pressed'),),
    );
  }
}
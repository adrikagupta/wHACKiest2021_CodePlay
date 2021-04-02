import 'package:book_my_hall/models/booking.dart';
import 'package:flutter/material.dart';
import 'package:book_my_hall/models/halls.dart';

class HallScreen extends StatefulWidget{
  int index;
  HallScreen(int i){
    index = i;
  }

  @override
  _HallScreenState createState() => _HallScreenState();
}

class _HallScreenState extends State<HallScreen> {
  void popUp(BuildContext ctx){
    showModalBottomSheet(
      context: ctx, 
      builder: (_){
        return Booking();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Hall Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Text('Hall number ${widget.index} pressed'),
            Padding(padding: EdgeInsets.all(20.0),
                    child:ElevatedButton(
                      child: Text('Book Hall'),
                      onPressed:() => popUp(context),
                    )),
            ],)
        ),
    );
  }
}
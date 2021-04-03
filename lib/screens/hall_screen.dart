import 'package:book_my_hall/models/booking.dart';
import 'package:book_my_hall/screens/rules_screen.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:book_my_hall/models/halls.dart';

const url = "https://download1519.mediafire.com/yrb14z8r6gxg/1j4aifyjljd3pwt/covid-Wedding.pdf";

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

  void read_rules(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_){
        return RuleScreen();
      }
    ));
  }

  // void launchURL() async =>
  //   await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

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
                    child:TextButton(
                      child: Text('Rules & Regulations'),
                      onPressed:() => read_rules(context),
                    )),
            Padding(padding: EdgeInsets.all(20.0),
                    child:TextButton(
                      child: Text('Download DC Permsission Letter'),
                      onPressed:(){},
                    )),
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
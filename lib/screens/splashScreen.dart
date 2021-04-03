import 'package:flutter/material.dart';
import 'dart:async';
import 'swipePages.dart';


class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() { 
    super.initState();
    Timer(Duration(seconds: 4),()=>Navigator.push(context,MaterialPageRoute(builder:(context)=>SwipePages())));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 237, 128,1),
      body:SafeArea(
        child: Stack(
          children:<Widget>[
                  Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: orientation==Orientation.portrait?AssetImage("assets/images/splash-ver.jpg"):AssetImage("assets/images/splash-hor.jpg"),
                fit: BoxFit.cover
              ),
            ),
          ),
          Positioned(
            bottom: height*0.09,
            left: orientation==Orientation.portrait?width/2 - 125: width/2,
            child: Container(
              height: orientation==Orientation.portrait?width*0.7:width*0.37,
              width: orientation==Orientation.portrait?width*0.7:width*0.37,
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/frame.png"),
                fit: BoxFit.cover
              ),
            ),
            child:Center(
              child: Text("BookMyHall",
              style: TextStyle(fontFamily: "Merienda", fontSize: 35,fontWeight: FontWeight.bold),
            ))
             ), 
          ),
          ]
        ),
      ),
    );
  }
}
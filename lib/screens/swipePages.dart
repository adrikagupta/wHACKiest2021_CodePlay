import 'dart:async';

import 'package:book_my_hall/screens/invitscreen.dart';
import 'package:flutter/material.dart';
import '../models/slide.dart';
import '../main.dart';
import '../widgets/slideDot.dart';
import '../widgets/slideItem.dart';

import 'package:url_launcher/url_launcher.dart';
class SwipePages extends StatefulWidget {
  @override
  _SwipePagesState createState() => _SwipePagesState();
}

class _SwipePagesState extends State<SwipePages> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }
  String _url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
  void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: orientation==Orientation.portrait?height*0.81:height*1.3,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: slideList.length,
                        itemBuilder: (ctx, i) => SlideItem(i),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 35),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                for(int i = 0; i<slideList.length; i++)
                                  if( i == _currentPage )
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                
                    Container(
                      width: width,
                      child: FlatButton(
                        onLongPress: _launchURL,
                        child: Text(
                          'Getting Started',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(15),
                        color: Color.fromRGBO(56, 173, 169,1.0),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardPage()));
                        } 
                      ),
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
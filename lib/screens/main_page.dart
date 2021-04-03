import 'package:book_my_hall/screens/hall_main_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final padding = 8.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xccc),
      body: Row(
        children: <Widget>[
        NavigationRail(
            minWidth: 56.0,
            groupAlignment: 1.0,
            backgroundColor: Color(0xff2D3035),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
             leading: Column(
              children: <Widget>[
                SizedBox(
                  height: 8,
                ),
                // Center(
                //   child: CircleAvatar(
                //     radius: 16,
                //     backgroundImage: NetworkImage(
                //         "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
                //   ),
                // ),
                SizedBox(
                  height: 108,
                ),
                // RotatedBox(
                //   quarterTurns: -1,
                //   child: IconButton(
                //     icon: Icon(Icons.tune),
                //     color: Color(0xffFCCFA8),
                //     onPressed: () {},
                //   ),
                // )
              ],
            ),
            selectedLabelTextStyle: TextStyle(
              color: Color(0xffFCCFA8),
              fontSize: 13,
              letterSpacing: 0.8,
              decoration: TextDecoration.underline,
              decorationThickness: 2.0,
            ),
            unselectedLabelTextStyle: TextStyle(
              fontSize: 13,
              letterSpacing: 0.8,
            ),
            destinations: [
              buildRotatedTextRailDestination("Book Caterer", padding),
              buildRotatedTextRailDestination("E-Invitation", padding),
              // buildRotatedTextRailDestination("Inspiration", padding),
              // buildRotatedTextRailDestination("All", padding),
            ],
          ),
      
          // This is the main content.
          HallMainPage()
        ],
      ),
    );
  }
}
NavigationRailDestination buildRotatedTextRailDestination(
    String text, double padding) {
  return NavigationRailDestination(
    icon: SizedBox.shrink(),
    label: Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: RotatedBox(
        quarterTurns: -1,
        child: Text(text),
      ),
    ),
  );
}

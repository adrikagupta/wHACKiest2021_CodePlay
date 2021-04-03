import 'package:book_my_hall/screens/catering_main_page.dart';
import 'package:book_my_hall/screens/hall_list.dart';
import 'package:flutter/material.dart';

class HallMainPage extends StatelessWidget {
  TextEditingController cityController = new TextEditingController();
  void searchByCity(BuildContext context) {
    Navigator.of(context).push(createRoute());
  }

  void goToCatererMainPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CateringMainPage()));
  }

  void goToInvitationPage(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/hall_1.jpg"),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(begin: Alignment.bottomCenter, colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ])),
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50)),
                        child: PopupMenuButton(
                          offset: Offset(-10, 15),
                          padding: EdgeInsets.all(0),
                          elevation: 0,
                          color: Colors.transparent,
                          icon: Icon(Icons.more_horiz,
                              size: 30, color: Colors.white),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: GestureDetector(
                                  onTap: () {
                                    goToCatererMainPage(context);
                                  },
                                  child: Icon(Icons.food_bank_rounded,
                                      size: 45, color: Colors.white.withOpacity(0.8))),
                            ),
                            PopupMenuItem(
                              child: GestureDetector(
                                  onTap: () {
                                    goToInvitationPage(context);
                                  },
                                  child: Icon(Icons.menu_book_rounded,
                                      size: 42, color: Colors.white.withOpacity(0.8))),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Creating the \nBest. Day. Ever.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          Text(
                            "Choose the hall by \nadding location",
                            style: TextStyle(
                                color: Colors.white, height: 1.4, fontSize: 18),
                          ),
                          SizedBox(height: 70),
                          Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      colors: [Colors.orange, Colors.red]),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: IconButton(
                                        icon: Icon(Icons.location_searching,
                                            color: Colors.white),
                                        onPressed: () {
                                          print("locator pressed");
                                        }),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: TextField(
                                        autofocus: false,
                                        controller: cityController,
                                        decoration: InputDecoration(
                                          hintText: "Type the city..",
                                          border: InputBorder.none,
                                        ),
                                        // keyboardType: TextInputType.text,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: IconButton(
                                        icon: Icon(Icons.search,
                                            color: Colors.white),
                                        onPressed: () {
                                          searchByCity(context);
                                        }),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ])),
          ),
        ),
      ),
    );
  }
}

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => HallList(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

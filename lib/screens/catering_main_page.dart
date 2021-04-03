import 'package:book_my_hall/screens/catering_list.dart';
import "package:flutter/material.dart";

class CateringMainPage extends StatefulWidget {
  @override
  _CateringMainPageState createState() => _CateringMainPageState();
}

class _CateringMainPageState extends State<CateringMainPage> {
  TextEditingController cityController = TextEditingController();
  void searchByCity(){
    Navigator.of(context).push(createRoute(cityController.text));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/catering_main_page.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
                ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('We speak the Language of Food', style:TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Text("Choose the caterer by \nadding location",style: TextStyle(color: Colors.white, height: 1.4, fontSize: 18),),
                SizedBox(height:70),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.orange]
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children:[
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15),
                      //   ),
                      //     child: IconButton(
                      //       icon: Icon(Icons.location_searching, color:Colors.white),
                      //       onPressed: (){
                      //         print("locator pressed");
                      //       }
                      //     ),
                      // ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            controller: cityController,
                            decoration: InputDecoration(
                              hintText: "Type the city..",
                              border: InputBorder.none,
                            ),
                              keyboardType: TextInputType.text,
                            ),
                        ),
                        ),
                      
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                          child: IconButton(
                            icon: Icon(Icons.search, color:Colors.white),
                            onPressed: (){searchByCity();}
                          ),
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Route createRoute(String text) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CateringList(text:text),
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

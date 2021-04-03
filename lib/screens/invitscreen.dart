import 'package:book_my_hall/utilities/tempimages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'templates.dart';
class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color(0xFF222222),
          body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            // Padding(
            //     padding: EdgeInsets.all(15.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: <Widget>[
            //         Container(
            //             height: 40.0,
            //             width: 40.0,
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(7.0),
            //                 color: Color(0xFFFD4F99)),
            //             child: Center(
            //                 child: Icon(Icons.filter_list, color: Colors.white))),
            //         Text('HOME',
            //             style: GoogleFonts.montserrat(
            //                 fontSize: 16.0,
            //                 fontWeight: FontWeight.w400,
            //                 textStyle: TextStyle(color: Colors.white))),
            //         Container(
            //           height: 40.0,
            //           width: 40.0,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(7.0),
            //               color: Color(0xFF353535)),
            //           child: Center(
            //             child: Icon(Icons.bookmark_border, color: Colors.white),
            //           ),
            //         )
            //       ],
            //     )),
            SizedBox(height: 10.0),
            Container(
                height: MediaQuery.of(context).size.height ,
                child: ListView(
                  children: <Widget>[
                    _buildListItem('https://wallpaperaccess.com/full/1315478.jpg', 'Wedding',
                        // 'A happy marriage is a long conversation which always seems too short.',
                        "Marriage isn't fun without inviting poeple!",
                         wedding),
                    
                    _buildListItem('https://www.keeeper.com/wp-content/uploads/2019/05/Headerbild-Kidsparty-1200x800.jpg', 'Birthday',
                        'Invite your friends for your special day!'
                        , birthday),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  _buildListItem(String imgPath, String title, String description, List list) {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: Stack(
          children: <Widget>[
            Container(height: 300.0),
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: NetworkImage(imgPath),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.darken))),
            ),
            Container(
                height: 300.0,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(title,
                        style: GoogleFonts.lexendDeca(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            textStyle: TextStyle(color: Colors.white))),
                    Text(description,
                      textAlign: TextAlign.center,
                        style: GoogleFonts.lexendDeca(
                            fontSize: 15.0,
                            // fontWeight: FontWeight.w400,
                            textStyle: TextStyle(color: Colors.white)
                            )
                            ),
                    SizedBox(height: 20.0),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Templates(img: imgPath, title: title, list: list)));
                        },
                        child: Container(
                            height: 50.0,
                            width: 125.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                            child: Center(
                                child: Text('Explore now',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        textStyle: TextStyle(
                                            color: Color(0xFFFD4F99)))))))
                  ],
                )))
          ],
        ));
  }
}
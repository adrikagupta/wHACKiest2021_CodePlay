import 'package:book_my_hall/screens/hall_read_more.dart';
import 'package:book_my_hall/utilities/textStyles.dart';
import "package:flutter/material.dart";

class HallCard extends StatelessWidget {
  final String photo, location, size, phNo, city, name,tagline;
  final int cost, numberOfGuests;
  final bool available;

  const HallCard(
      {Key key,
      this.photo,
      this.location,
      this.size,
      this.phNo,
      this.city,
      this.cost,
      this.numberOfGuests,
      this.available, this.name, this.tagline})
      : super(key: key);

  void readMore(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HallReadMore(name: name, size:size)));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: height,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            height: height * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image:
                  DecorationImage(image: AssetImage(photo), fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: height * 0.02),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: height * 0.36,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffbba384)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(name.toUpperCase(),
                      style: caterer_name, overflow: TextOverflow.ellipsis),

                  SizedBox(height: 5),
                  Text(tagline, style: caterer_read_more_content_black),

                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.black),
                      SizedBox(width: 5),
                      Text(location + ", " + city,
                          style: caterer_location,
                          overflow: TextOverflow.ellipsis)
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: Colors.black),
                      SizedBox(width: 5),
                      Text(phNo,
                          style: caterer_location,
                          overflow: TextOverflow.ellipsis)
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.people, color: Colors.black),
                      SizedBox(width: 5),
                      Text("50 guests",
                          style: caterer_location,
                          overflow: TextOverflow.ellipsis)
                    ],
                  ),
                  // Container(
                  //   width: 80,
                  //   margin: EdgeInsets.only(top: 10),
                  //   decoration: BoxDecoration(
                  //       color: Colors.black,
                  //       borderRadius: BorderRadius.circular(10)),
                  //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  //   child: Row(children: [
                  //     Icon(Icons.star_rounded, color: Colors.white, size: 30),
                  //     SizedBox(width: 3),
                  //     Text('$stars',
                  //         style: TextStyle(color: Colors.white, fontSize: 18))
                  //   ]),
                  // ),
                  // SizedBox(height:10),
                  // Text('"Highly recommend this."',style:caterer_read_more_content_black),
                ]),
                Column(children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      height: 2,
                      color: Colors.black45),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('\u{20B9} $cost onwards',
                                  style: caterer_price_style)
                            ]),
                        TextButton(
                            child: Text("Read more"),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.symmetric(horizontal: 15)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side:
                                            BorderSide(color: Colors.black)))),
                            onPressed: () {
                              readMore(context);
                            }),
                      ]),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}

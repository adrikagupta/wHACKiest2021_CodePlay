import 'package:book_my_hall/screens/caterer_read_more.dart';
import 'package:book_my_hall/utilities/textStyles.dart';
import "package:flutter/material.dart";

class CatererCard extends StatelessWidget {
  final String photo;
  final String name;
  final String city;
  final String address;
  final double pricePerPlate;
  final double stars;
  final String tagline;

  const CatererCard(
      {Key key,
      this.photo,
      this.name,
      this.city,
      this.address,
      this.pricePerPlate, this.stars, this.tagline})
      : super(key: key);

   void readMore(BuildContext context){
     Navigator.push(context,MaterialPageRoute(builder: (context)=>CatererReadMore(name:name,pricePerPlate:pricePerPlate)));
   }   
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,),
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
            padding: EdgeInsets.symmetric(horizontal:15,vertical:20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffbba384)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(name.toUpperCase(), style: caterer_name,overflow:TextOverflow.ellipsis),

                  SizedBox(height:5),
                  Text(tagline,style:caterer_read_more_content_black),
                  
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.black),
                      SizedBox(width: 5),
                      Text(address + ", " + city, style: caterer_location,overflow:TextOverflow.ellipsis)
                    ],
                  ),
                  Container(
                    width:80,
                    margin: EdgeInsets.only(top:10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical:5),
                    
                    child: Row(children: [
                      Icon(Icons.star_rounded, color: Colors.white,size:30),
                      SizedBox(width:3),
                      Text('$stars',style:TextStyle(color:Colors.white,fontSize:18))
                    ]),
                  ),
                  // SizedBox(height:10),
                  // Text('"Highly recommend this."',style:caterer_read_more_content_black),
                ]),
                Column(children: [
                  Container(
                      margin:EdgeInsets.only(bottom:10),
                      width: double.infinity, height: 2, color: Colors.black45),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('\u{20B9} $pricePerPlate onwards',
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
                            onPressed: () {readMore(context);}),
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

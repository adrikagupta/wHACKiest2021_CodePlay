import 'package:book_my_hall/utilities/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CatererReadMore extends StatelessWidget {
  final String name;
  final double pricePerPlate;
  final List<String> images = [
    "assets/images/brown_sugar.webp",
    "assets/images/bth.webp",
    "assets/images/evergreen.webp",
    "assets/images/fossetta_caterer.webp",
    "assets/images/karachi.webp",
    "assets/images/partywalaz.webp",
    "assets/images/quisine.webp",
    "assets/images/aura_caterer.webp",
    "assets/images/tongue_twister.webp",
  ];

  CatererReadMore({Key key, this.name, this.pricePerPlate}) : super(key: key);
  Widget buildImage(String image) {
    return Container(
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom:15),
            child: Column(
              children: [
                Container(
                  height: 260,
                  child: ListView(children: [
                    CarouselSlider(
                      items: [
                        buildImage(images[0]),
                        buildImage(images[1]),
                        buildImage(images[2]),
                        buildImage(images[3]),
                      ],
                      options: CarouselOptions(
                        height: 250.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.95,
                      ),
                    ),
                  ]),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(color: Colors.brown[50]),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About", style: caterer_read_more_title_black),
                        Text(
                            "$name Catering Service is a catering service provider based out of Ahmedabad. There are a heap of things which takes place in a grand wedding function and one thing which elevates the show of the ceremony is lip-smacking and delectable food which is definitely the highlight of every wedding function in India. If you are planning one such function and looking for a trustworthy caterer then Swad Catering Service can help you in availing top-notched services with ease and contemplation. ",
                            style: caterer_read_more_content_black)
                      ],
                    ),
                  ),
                ),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width : width*0.45,
                      margin: EdgeInsets.fromLTRB(12, 0, 0, 10),
                      padding: EdgeInsets.symmetric(horizontal:10,vertical:10),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:Color(0xffd9a760),width:2)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.monetization_on_rounded, size:35,color:Color(0xffd9a760)),
                          SizedBox(width:5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Price/plate",style:caterer_read_more_content_black_tiny),
                              SizedBox(height:3),
                              Text("From: \u{20B9} $pricePerPlate",style:caterer_read_more_content_black_tiny)
                            ]
                          ),
                        ]
                      ),
                    ),
                    
                    Container(
                       width : width*0.45,
                      margin: EdgeInsets.fromLTRB(0, 0, 12, 10),
                      padding: EdgeInsets.symmetric(horizontal:10,vertical:10),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:Colors.green,width:2)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.medical_services_outlined,size:35,color:Colors.green),
                          SizedBox(width:5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Covid Ready?",style:caterer_read_more_content_black_tiny),
                              SizedBox(height:3),
                              Text("Yes",style:caterer_read_more_content_black_tiny)
                            ]
                          ),
                        ]
                      ),
                    ),
                  ]
                ),
                SizedBox(height:10),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/menu_1.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CUISINES', style: caterer_read_more_title),
                      SizedBox(height: 5),
                      Text('- Chinese', style: caterer_read_more_content),
                      SizedBox(height: 5),
                      Text('- Mughlai', style: caterer_read_more_content),
                      SizedBox(height: 5),
                      Text('- Italian', style: caterer_read_more_content),
                      SizedBox(height: 5),
                      Text('- Thai', style: caterer_read_more_content),
                      SizedBox(height: 5),
                      Text('- North Indian', style: caterer_read_more_content),
                      SizedBox(height: 5),
                      Text('- South Indian', style: caterer_read_more_content),
                      SizedBox(height: 5),
                      Text('- Continental', style: caterer_read_more_content),
                      
                    ],
                  ),
                ),

                Center(
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding:EdgeInsets.symmetric(horizontal:30,vertical:10),
                      margin: EdgeInsets.only(top:20),
                      decoration: BoxDecoration(
                        color:Colors.black,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child:Text("Book", style: caterer_read_more_content)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

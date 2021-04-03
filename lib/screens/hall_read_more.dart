import 'package:book_my_hall/screens/rules_screen.dart';
import 'package:book_my_hall/utilities/textStyles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import '../models/booking.dart';
import 'rules_screen.dart';

const url = "https://download1519.mediafire.com/yrb14z8r6gxg/1j4aifyjljd3pwt/covid-Wedding.pdf";

const url2 = "https://www.amazon.in/s?k=masks+and+sanitizers&crid=3L0U6Y2P86YMC&sprefix=Masks+amd+sa%2Caps%2C356&ref=nb_sb_ss_sc_1_12";

class HallReadMore extends StatefulWidget {
  final String name;
  final String size;

  HallReadMore({Key key, this.name, this.size}) : super(key: key);

  @override
  _HallReadMoreState createState() => _HallReadMoreState();
}

class _HallReadMoreState extends State<HallReadMore> {
  final List<String> images = [
  "assets/images/hall_13.jpg",
  "assets/images/hall_14.jpg",
  "assets/images/hall_11.jpg",
  "assets/images/hall_12.jpg",
];

void onSubmit(){
//   Fluttertoast.showToast(
//         msg: "Form Submitted",
//         toastLength: Toast.LENGTH_LONG,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.green[300],
//         textColor: Colors.white,
//         fontSize: 14.0
// );
}

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

  void rulesAndRegualtions(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_){
        return RuleScreen();
      }
    ));
  }

  void dcPermissionLetter() async{
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

  void amazonMask() async{
    await canLaunch(url2) ? await launch(url2) : throw 'Could not launch $url2';
  }

  void popUp(BuildContext ctx){
    showModalBottomSheet(
      context: ctx, 
      builder: (_){
        return Booking();
    });
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
                            "${widget.name} will make your dream come true. Offering a couple of lawns adorned in lush greenery and a stunning banquet, the luxurious venue makes for the most perfect setting for weddings, receptions, and pre-wedding ceremonies, along with anniversary functions, promotion parties, product launches, fundraisers, galas, award functions, and more. We will provide you a wedding ceremony that leaves everyone spellbound.",
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
                          Icon(Icons.house_outlined, size:35,color:Color(0xffd9a760)),
                          SizedBox(width:5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Size",style:caterer_read_more_content_black_tiny),
                              SizedBox(height:3),
                              Text(widget.size,style:caterer_read_more_content_black_tiny)
                            ]
                          ),
                        ]
                      ),
                    ),
                    
                    GestureDetector(
                          onDoubleTap: amazonMask,
                          child: Container(
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
                    ),
                  ]
                ),
                SizedBox(height:10),
                Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Row(
                    children: [
                      Icon(Icons.list_alt_rounded,size:25,color:Colors.blue),
                      SizedBox(width:5),
                      GestureDetector(
                        onTap: (){rulesAndRegualtions(context);},
                        child: Text("Rules and Regulations", style: hall_read_more_link),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:5),
                Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_downward_rounded,size:25,color:Colors.blue),
                      SizedBox(width:5),
                      GestureDetector(
                        onTap: dcPermissionLetter,
                        child: Text("Download DC Permission Letter" ,style: hall_read_more_link),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:20),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/tour_1.jpg"),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:5),
                      Text('GET VIRTUAL TOUR', style: caterer_read_more_title),
                      SizedBox(height: 10),
                      Text('Get guided tour of the Venue by our Venue Managers over Video Call at comfort of your home.', style: caterer_read_more_content),
                      SizedBox(height: 10),
                      Text('Visit Date', style: caterer_read_more_content),
                      SizedBox(height: 5),
                      Container(
                      padding: EdgeInsets.only(bottom:0,left:10,right:10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                      ),
                      child: TextField(
                        // controller: medNameController,
                         style: TextStyle(
                        color: Colors.black87,
                         fontSize: 17,
                        //  fontFamily: 'Merienda',
                         fontWeight: FontWeight.w400,),
                         decoration: InputDecoration(
                           hintText: "dd/mm/yyyy",
                          enabledBorder:  UnderlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          focusedBorder: UnderlineInputBorder(
                           borderSide: BorderSide.none
                         ),
                         
                         ),
                         
                       ),
                    ),
                    SizedBox(height: 10),
                      Text('Visit Time (24hrs format)', style: caterer_read_more_content),
                      SizedBox(height: 5),
                      Container(
                      padding: EdgeInsets.only(bottom:0,left:10,right:10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                      ),
                      child: TextField(
                        // controller: medNameController,
                         style: TextStyle(
                        color: Colors.black87,
                         fontSize: 17,
                        //  fontFamily: 'Merienda',
                         fontWeight: FontWeight.w400,),
                         decoration: InputDecoration(
                           hintText: "hh:mm",
                          enabledBorder:  UnderlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          focusedBorder: UnderlineInputBorder(
                           borderSide: BorderSide.none
                         ),
                         
                         ),
                         
                       ),
                    ),
                    SizedBox(height: 20),
                    Center(
                  child: GestureDetector(
                    onTap: (){onSubmit();},
                    child: Container(
                      padding:EdgeInsets.symmetric(horizontal:30,vertical:10),
                      margin: EdgeInsets.only(top:20),
                      decoration: BoxDecoration(
                        color:Colors.transparent,
                        border: Border.all(color:Colors.white),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child:Text("Submit", style: caterer_read_more_content)
                    ),
                  ),
                ),
                SizedBox(height:10)
                    ],
                  ),
                ),

                Center(
                  child: GestureDetector(
                    onTap: () => popUp(context),
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
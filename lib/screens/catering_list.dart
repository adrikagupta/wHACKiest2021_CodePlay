import 'package:book_my_hall/models/caterer.dart';
import 'package:book_my_hall/models/catererList.dart';
import 'package:book_my_hall/widgets/caterer_card.dart';
import 'package:flutter/material.dart';

class CateringList extends StatefulWidget {
  final String text;

  const CateringList({Key key, this.text}) : super(key: key);
  @override
  _CateringListState createState() => _CateringListState();
}

class _CateringListState extends State<CateringList> {

  List<Caterer> catererList;
  List<Caterer> getCaterers(String text){
    return caterers.where((element) => element.city == text).toList();
  }
  @override
  void initState() { 
    super.initState();
    catererList = getCaterers(widget.text);
  }

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
        itemCount: catererList.length,
        itemBuilder: (context, index) {
          return CatererCard(
            name: catererList[index].name,
            photo: catererList[index].photo,
            city: catererList[index].city,
            address: catererList[index].address,
            pricePerPlate: catererList[index].pricePerPlate,
            stars: catererList[index].stars,
            tagline: catererList[index].tagline,
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

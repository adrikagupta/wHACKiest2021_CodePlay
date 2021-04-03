import 'package:book_my_hall/models/catererList.dart';
import 'package:book_my_hall/widgets/caterer_card.dart';
import 'package:flutter/material.dart';

class CateringList extends StatefulWidget {
  @override
  _CateringListState createState() => _CateringListState();
}

class _CateringListState extends State<CateringList> {
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
        itemCount: caterers.length,
        itemBuilder: (context, index) {
          return CatererCard(
            name: caterers[index].name,
            photo: caterers[index].photo,
            city: caterers[index].city,
            address: caterers[index].address,
            pricePerPlate: caterers[index].pricePerPlate,
            stars: caterers[index].stars,
            tagline: caterers[index].tagline,
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

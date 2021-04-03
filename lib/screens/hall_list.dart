import 'package:book_my_hall/models/halls.dart';
import 'package:book_my_hall/widgets/hall_card.dart';
import 'package:flutter/material.dart';

class HallList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: halls.length,
        itemBuilder: (context, index) {
          return HallCard(
            name: halls[index].name,
            photo: halls[index].photo,
            city: halls[index].city,
            location: halls[index].location,
            cost: halls[index].cost,
            size: halls[index].size,
            phNo: halls[index].phNo,
            tagline: halls[index].tagline,
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
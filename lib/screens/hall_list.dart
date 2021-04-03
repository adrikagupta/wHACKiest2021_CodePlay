import 'package:book_my_hall/models/halls.dart';
import 'package:book_my_hall/widgets/hall_card.dart';
import 'package:flutter/material.dart';

class HallList extends StatefulWidget {
  final String text;

  const HallList({Key key, this.text}) : super(key: key);

  @override
  _HallListState createState() => _HallListState();
}

class _HallListState extends State<HallList> {
  List<Hall> hallList;
  List<Hall> getHalls(String text){
    return halls.where((element) => element.city == text).toList();
  }
  @override
  void initState() { 
    super.initState();
    hallList = getHalls(widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: hallList.length,
        itemBuilder: (context, index) {     
          return HallCard(
            name: hallList[index].name,
            photo: hallList[index].photo,
            city: hallList[index].city,
            location: hallList[index].location,
            cost: hallList[index].cost,
            size: hallList[index].size,
            phNo: hallList[index].phNo,
            tagline: hallList[index].tagline,
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
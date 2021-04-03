import 'package:flutter/material.dart';
import 'editTemplate.dart';
import 'editTemplate2.dart';
class Tile extends StatefulWidget {
  const Tile(this.source);

  final String source;

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> EditTemplate2(widget.source))),
      child: Card(
        shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(25.0),  
          ), 
        elevation: 10.0,
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network(widget.source,
          // fit: BoxFit.fill,
        ),)
      ),
    );
  }
}
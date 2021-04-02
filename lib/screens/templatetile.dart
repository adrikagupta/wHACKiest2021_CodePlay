import 'package:flutter/material.dart';
import 'editTemplate.dart';
import 'editTemplate2.dart';
class Tile extends StatefulWidget {
  const Tile(this.source, this.index);

  final String source;
  final int index;

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> EditTemplate2(widget.source))),
      child: Card(
        child:Column(
          children: <Widget>[
            Image.network(widget.source),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child:Column(
                children: <Widget>[
                  Text(
                    'Image number ${widget.index}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
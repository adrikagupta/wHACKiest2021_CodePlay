import 'package:flutter/material.dart';

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
    return Card(
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
    );
  }
}
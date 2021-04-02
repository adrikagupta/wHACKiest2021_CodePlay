import 'package:flutter/material.dart';
import 'templatetile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Templates extends StatefulWidget {
  @override
  _TemplatesState createState() => _TemplatesState();
}

class _TemplatesState extends State<Templates> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: StaggeredGridView.count(
          primary: false,
          crossAxisCount: 4,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          children: <Widget>[
            Tile(
                'https://image.freepik.com/free-vector/blank-wedding-card-design_53876-93523.jpg',
                1),
            Tile(
                'https://image.freepik.com/free-psd/botanical-framed-card_53876-91331.jpg',
                2),
            Tile(
                'https://i.pinimg.com/236x/30/2e/c8/302ec8db47100617761306dc749cc1b3.jpg',
                3),
            Tile(
                'https://i.pinimg.com/236x/ea/2f/a0/ea2fa0a65a40ea2432294096c9f8c8d2.jpg',
                4),
            Tile(
                'https://i.pinimg.com/236x/80/f8/ac/80f8ac9143e66743e3828556c16ac309.jpg',
                5),
          ],
          staggeredTiles: const <StaggeredTile>[
            const StaggeredTile.fit(2),
            const StaggeredTile.fit(2),
            const StaggeredTile.fit(2),
            const StaggeredTile.fit(2),
            const StaggeredTile.fit(2),
          ],
      ),
        ),
      ),
    );
  }
}
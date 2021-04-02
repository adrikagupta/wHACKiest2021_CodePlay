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
        body: StaggeredGridView.count(
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        children: <Widget>[
          Tile(
              'https://i.pinimg.com/236x/bb/0d/6b/bb0d6b30f2d0d0d339697e0aa5ff43bb.jpg',
              1),
          Tile(
              'https://i.pinimg.com/236x/b0/70/53/b07053899fe770f1be311aa0b61ca917.jpg',
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
          // Tile(
          //     'https://cdn.pixabay.com/photo/2013/04/13/18/42/the-eiffel-tower-103417_960_720.jpg',
          //     6),
          // Tile(
          //     'https://cdn.pixabay.com/photo/2017/08/24/22/37/gyrfalcon-2678684_960_720.jpg',
          //     7),
          // Tile(
          //     'https://cdn.pixabay.com/photo/2013/01/17/08/25/sunset-75159_960_720.jpg',
          //     8),
        ],
        staggeredTiles: const <StaggeredTile>[
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
          // const StaggeredTile.fit(1),
          // const StaggeredTile.fit(2),
          // const StaggeredTile.fit(2),
        ],
      ),
      ),
    );
  }
}
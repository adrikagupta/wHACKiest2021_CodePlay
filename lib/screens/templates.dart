import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'templatetile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Templates extends StatefulWidget {
  const Templates({this.img, this.title, this.list});
  final String img;
  final String title;
  final List list;

  @override
  _TemplatesState createState() => _TemplatesState();
}

class _TemplatesState extends State<Templates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222222),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 150.0,
        // leading: IconButton(
        //     icon: Icon(Icons.arrow_back_ios),
        //     onPressed: ()=>Navigator.pop(context),            
        //   ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0x00000000),
        title: Stack(
          children: [
            Container(
              height: 150.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: NetworkImage(widget.img),
                        fit: BoxFit.fitWidth,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.darken))),
              ),
             Container(
              height: 150.0,
              child: Center(
                  child: Text(widget.title,
                      style: GoogleFonts.lexendDeca(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          textStyle: TextStyle(color: Colors.white))))), 
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: ()=>Navigator.pop(context),            
            ),
      
          ],
        ),
      ),
    body: 
    // Column(
    //     children: [
      //     Stack(
      //   children: <Widget>[
      //     Container(
      //       height: 200.0,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           image: DecorationImage(
      //               image: NetworkImage(widget.img),
      //               fit: BoxFit.cover,
      //               colorFilter: ColorFilter.mode(
      //                   Colors.black.withOpacity(0.6), BlendMode.darken))),
      //     ),
      //     Container(
      //         height: 200.0,
      //         child: Center(
      //             child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: <Widget>[
      //             Text(widget.title,
      //                 style: GoogleFonts.lexendDeca(
      //                     fontSize: 30.0,
      //                     fontWeight: FontWeight.bold,
      //                     textStyle: TextStyle(color: Colors.white))),
        
      //                 ],
      //         )))
      //   ],
      // ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: StaggeredGridView.count(
            primary: false,
            crossAxisCount: 4,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            children: widget.list, 
            // <Widget>[
            //   Tile(
            //       'https://image.freepik.com/free-vector/blank-wedding-card-design_53876-93523.jpg',
            //       1),
            //   Tile(
            //       'https://image.freepik.com/free-psd/botanical-framed-card_53876-91331.jpg',
            //       2),
            //   Tile(
            //       'https://i.pinimg.com/236x/30/2e/c8/302ec8db47100617761306dc749cc1b3.jpg',
            //       3),
            //   Tile(
            //       'https://i.pinimg.com/236x/ea/2f/a0/ea2fa0a65a40ea2432294096c9f8c8d2.jpg',
            //       4),
            //   Tile(
            //       'https://i.pinimg.com/236x/80/f8/ac/80f8ac9143e66743e3828556c16ac309.jpg',
            //       5),
            // ],
            staggeredTiles: const <StaggeredTile>[
    const StaggeredTile.fit(2),
    const StaggeredTile.fit(2),
    const StaggeredTile.fit(2),
    const StaggeredTile.fit(2),
    const StaggeredTile.fit(2),
    const StaggeredTile.fit(2),
            ],
      ),
          ),
      //   ],
      // ),
      );
  }
}

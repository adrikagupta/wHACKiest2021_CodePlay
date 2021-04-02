import 'package:flutter/material.dart';
import 'package:network_image_to_byte/network_image_to_byte.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

import 'package:screenshot/screenshot.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as ui;

class EditTemplate2 extends StatefulWidget {
  const EditTemplate2(this.image);
  final String image;
  @override
  _EditTemplate2State createState() => _EditTemplate2State();
}

class _EditTemplate2State extends State<EditTemplate2> {

  ScreenshotController screenshotController = ScreenshotController();
  Uint8List _imageFile;
  String title = "";
  String venue = "";
  String desc = "";
  String date = "";

    @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Template'),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Screenshot(
              controller: screenshotController,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Image.network(
                        widget.image,
                        fit: BoxFit.fitWidth,
                      ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Positioned(
                          //   top: height*0.07,
                          //   left: width*0.3,
                          //   child: 
                            Text(
                                  title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 26,
                                    ),
                                
                            // )
                            ),
                            // Positioned(
                            // top: 30.0,
                            // left: 50.0,
                            // child:
                             Text(
                                  desc,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 26,
                                    ),
                                
                            // )
                            ),
                            // Positioned(
                            // top: 30.0,
                            // left: 50.0,
                            // child: 
                            Text(
                              venue,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 26,
                                    ),
                                
                            // )
                            ),
                            // Positioned(
                            // top: 30.0,
                            // left: 50.0,
                            // child: 
                            Text(
                              date,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 26,
                                    
                                    ),
                                
                            // )
                            ),
                        ],
                      )
                    ],
                  )
            ),
            TextField(
              onChanged: (val) {
               setState(() {
                desc = val;
                });
              },
              decoration: InputDecoration(hintText: "Enter Title"),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              onChanged: (val) {
               setState(() {
                venue = val;
                });
              },
              decoration: InputDecoration(hintText: "Enter Title"),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              onChanged: (val) {
               setState(() {
                date = val;
                });
              },
              decoration: InputDecoration(hintText: "Enter Title"),
            ),
            SizedBox(
              height: 12,
            ),TextField(
              onChanged: (val) {
               setState(() {
                title = val;
                });
              },
              decoration: InputDecoration(hintText: "Enter Title"),
            ),
            SizedBox(
              height: 12,
            ),
            TextButton(
              child: Text('Generate'),
              onPressed: (){
                  _imageFile = null;
                  screenshotController
                      .capture(delay: Duration(milliseconds: 10))
                      .then((Uint8List image) async {
                    _imageFile = image;
                    showDialog(
                      context: context,
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          title: Text("CAPURED SCREENSHOT"),
                        ),
                        body: Center(
                            child: Column(
                          children: [
                            _imageFile != null ? Image.memory(_imageFile) : Container(),
                          ],
                        )),
                      ),
                    );
                  }).catchError((onError) {
                    print(onError);
                  });
                },
            )
          ] 
    ),
      ));
    
    }

}
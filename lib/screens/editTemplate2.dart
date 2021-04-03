import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:screenshot/screenshot.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import '../widgets/iconCard.dart';
import 'package:google_fonts/google_fonts.dart';

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
  String fam = "Acme";

  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }


    @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: 
      SingleChildScrollView(
              child: 
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Expanded(
              // child: Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 10.0),
                    // child: 
                    Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            padding:
                                EdgeInsets.symmetric(horizontal: 10.0),
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        // Spacer(),
                        SizedBox(height: height*0.2,),
                        GestureDetector(child: IconCard(icon: Icons.color_lens),
                        onTap: (){
                                          
                        showDialog(
                        context: context,
                        builder: (BuildContext context) {
                            return AlertDialog(
                          title: const Text('Pick a color!'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: pickerColor,
                              onColorChanged: changeColor,
                              showLabel: true,
                              pickerAreaHeightPercent: 0.8,
                            ),
                            ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Got it'),
                              onPressed: () {
                                setState(() => currentColor = pickerColor);
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                            );
                            }
                        );
                        }
                        ),
                         GestureDetector(child: IconCard(icon: Icons.font_download),
                         //onTap: //TODO: add font function
                         )
                      ],
                    // ),
              ),
            // ),
           Container(
            //  height: height*0.55,
             width: width*0.7,
             child: Screenshot(
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
                                           style:  GoogleFonts.getFont( fam,
                                            textStyle:TextStyle(
                                              color:currentColor ,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 26,
                                            
                                            ),
                                        
                                    )
                                        
                                    // )
                                    ),
                                    // Positioned(
                                    // top: 30.0,
                                    // left: 50.0,
                                    // child:
                                     Text(
                                          desc,
                                          textAlign: TextAlign.center,
                                           style:  GoogleFonts.getFont( fam,
                                            textStyle:TextStyle(
                                              color:currentColor ,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 26,
                                            
                                            ),
                                        
                                    )
                                        
                                    // )
                                    ),
                                    // Positioned(
                                    // top: 30.0,
                                    // left: 50.0,
                                    // child: 
                                    Text(
                                      venue,
                                          textAlign: TextAlign.center,
                                           style:  GoogleFonts.getFont( fam,
                                            textStyle:TextStyle(
                                              color:currentColor ,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 26,
                                            
                                            ),
                                        
                                    )
                                        
                                    // )
                                    ),
                                    // Positioned(
                                    // top: 30.0,
                                    // left: 50.0,
                                    // child: 
                                    Text(
                                      date,
                                          textAlign: TextAlign.center,
                                          style:  GoogleFonts.getFont( fam,
                                            textStyle:TextStyle(
                                              color:currentColor ,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 26,
                                            
                                            ),
                                        
                                    )
                                    ),
                                ],
                              )
                            ],
                          )
              ),
           ),
          ]),
        //     Row(
        //             mainAxisAlignment: MainAxisAlignment.center ,
        //             children: [
        //               TextButton(
        //                 child: Text('Choose color: ',
        // style: TextStyle(
        //   fontFamily: 'Acme'
        // ),),
        //                 onPressed: (){
                                          
        //                 showDialog(
        //                 context: context,
        //                 builder: (BuildContext context) {
        //                     return AlertDialog(
        //                   title: const Text('Pick a color!'),
        //                   content: SingleChildScrollView(
        //                     child: ColorPicker(
        //                       pickerColor: pickerColor,
        //                       onColorChanged: changeColor,
        //                       showLabel: true,
        //                       pickerAreaHeightPercent: 0.8,
        //                     ),
        //                     ),
        //                   actions: <Widget>[
        //                     TextButton(
        //                       child: const Text('Got it'),
        //                       onPressed: () {
        //                         setState(() => currentColor = pickerColor);
        //                         Navigator.of(context).pop();
        //                       },
        //                     ),
        //                   ],
        //                     );
        //                     }
        //                 );
        //                 }
        //               ),
        //               Container(
        //                 height: 50.0,
        //                 child: Text('     '),
        //                 decoration: BoxDecoration(
        //                   shape: BoxShape.circle,
        //                   color:  currentColor,
        //                 )

        //                 ),
        //               DropdownButton<String>(
                      
        //                 hint: Text('Choose font style'), 
        //                  value: fam,
        //                 items: <String>['Acme', 'Faustina', 'Dancing Script', 'Lobster', 'Great Vibes','Architects Daughter'].map((String value) {
        //                   return new DropdownMenuItem<String>(
        //                     value: value,
        //                     child: new Text(value,
        //                       style:  GoogleFonts.getFont(value)
        //                     ),
                            
        //                   );
        //                 }).toList(),
        //                 onChanged: (String f) {
        //                   setState((){
        //                     fam = f;
        //                   });
        //                   print(fam);
        //                 },)
        //             ],
        //     ),
            TextField(
                    onChanged: (val) {
                     setState(() {
                      title = val;
                      });
                    },
                    decoration: InputDecoration(
                     labelText: 'Enter Title',
                    //  labelStyle: TextStyle(
                    //    color: Colors.pink
                    //  ),
                    //  prefixIcon: Icon(Icons.date_range_rounded),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20.0)
                     )
             ),
            ),
            SizedBox(
                    height: 12,
            ),
            TextField(
                    onChanged: (val) {
                     setState(() {
                      desc = val;
                      });
                    },
                    decoration: InputDecoration(
                     labelText: 'Enter Description',
                    //  labelStyle: TextStyle(
                    //    color: Colors.pink
                    //  ),
                    //  prefixIcon: Icon(Icons.),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20.0)
                     )
             ),
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
                    decoration: InputDecoration(
                     labelText: 'Enter Venue',
                    //  labelStyle: TextStyle(
                    //    color: Colors.pink
                    //  ),
                     prefixIcon: Icon(Icons.location_on),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20.0)
                     )
             ),
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
                    decoration: InputDecoration(
                     labelText: 'Enter Date and Time',
                    //  labelStyle: TextStyle(
                    //    color: Colors.pink
                    //  ),
                     prefixIcon: Icon(Icons.date_range_rounded),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20.0)
                     )
             ),
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
          // ),
      ),
                ))
                );
    
    }

}
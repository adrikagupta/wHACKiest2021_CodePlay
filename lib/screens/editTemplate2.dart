import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'dart:typed_data';
import 'package:screenshot/screenshot.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:share/share.dart';
import '../widgets/iconCard.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:share/share.dart';
// import 'package:esys_flutter_share/esys_flutter_share.dart';

import 'package:path_provider/path_provider.dart';

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
  String noofpep = "";
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  List<DateTime> intervals =[];
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

startDatePicker(BuildContext context){
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true, 
      minTime: DateTime(2020, 1, 1),
      maxTime: DateTime(2025, 12, 31),
      onConfirm: (date) {
        setState(() {
        startDate = date;
        });
      },
      );
  }
  endDatePicker(BuildContext context){
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true, 
      minTime: DateTime(2020, 1, 1),
      maxTime: DateTime(2025, 12, 31),
      onConfirm: (date) {
        setState(() {
        endDate = date;
        });
      },
      );
  }

    @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xFFF8F9F9),
        body: 
        SingleChildScrollView(
                child: 
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFFDF2E9 ),
                              child: IconButton(
                                color: Colors.black,
                                padding:
                                    EdgeInsets.symmetric(horizontal: 10.0),
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
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
                           onTap: ()=>_showDialog(context)
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
                                                fontSize: 27,
                                              
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
                                                fontWeight: FontWeight.w400,
                                                fontSize: 22
                                              
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
                                                fontWeight: FontWeight.w400,
                                                fontSize: 22,
                                              
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
                                                fontWeight: FontWeight.w400,
                                                fontSize: 22,
                                              
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
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
                 Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(startDate.toLocal().toString().split(' ')[0]),
                    SizedBox(height: 20.0,),
                    ElevatedButton(
                style:  ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Color(0xFFFDF2E9 ),
                    minimumSize: Size(60, 46),
                    padding: EdgeInsets.symmetric(horizontal: 46),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                      onPressed: () { 
                        startDatePicker(context);
                        setState((){
                          date = startDate.toLocal().toString().split(' ')[0];
                        });
                      },
                      child: Text('Select Start date'),
                    ),
                  ],
                ),
                SizedBox(
                        height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(endDate.toLocal().toString().split(' ')[0]),
                    SizedBox(height: 20.0,),
                    ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                          onPrimary: Colors.black87,
                          primary: Color(0xFFFDF2E9 ),
                          minimumSize: Size(60, 46),
                          padding: EdgeInsets.symmetric(horizontal: 46),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                      onPressed: () => endDatePicker(context),
                      child: Text('Select End date'),
                    ),
                  ],
                ),
              ],
            ),
                SizedBox(
                        height: 12,
                ),
                TextField(
                        onChanged: (val) {
                         setState(() {
                          noofpep = val;
                          });
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                         labelText: 'Enter Number of people attending',
                        //  labelStyle: TextStyle(
                        //    color: Colors.pink
                        //  ),
                         prefixIcon: Icon(Icons.people),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20.0)
                         )
                 ),
                ),
                SizedBox(
                        height: 12,
                ),
                  ],
                ),
              ),
              ElevatedButton(
                style:  ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Color(0xFFFDF2E9 ),
                    minimumSize: Size(120, 46),
                    padding: EdgeInsets.symmetric(horizontal: 46),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                      child: Text('Generate'),
                      onPressed: (){
                        if(noofpep==""){
                            showDialog(
                              context: context,
                              builder:(BuildContext context) {
                                  return AlertDialog(
                                title: const Text('Please enter the number of people attending'),
                                content: Text(''));
                                }
                              );
                        }
                        else{
                          int noof = int.parse(noofpep);
                            if(noof>50){
                              int diff = endDate.difference(startDate).inHours;
                              int a = (noof/50).ceil();
                              print(diff);
                              print(a);
                              int hours = (diff/a).floor();
                              print(hours);
                              var diffx = (diff/a) - hours;
                              int mins = ((diffx)*60).ceil();
                              print(mins);
                              DateTime initial = startDate;
                              for(int i=0; i<a; i++){
                                DateTime temp = initial.add(Duration(hours: hours, minutes: mins));
                                intervals.add(temp);
                                initial = temp;
                              }
                              print(intervals);
                            }
                          _imageFile = null;
                          screenshotController
                              .capture(delay: Duration(milliseconds: 10))
                              .then((Uint8List image) async {
                            _imageFile = image;
                            showDialog(
                              context: context,
                              builder: (context) => Scaffold(
                                appBar: AppBar(
                                  title: Text("Your invitation"),
                                  backgroundColor: Color(0xFFFDF2E9 ),
                                ),
                                body: Center(
                                    child: Column(
                                  children: [
                                    _imageFile != null ? Image.memory(_imageFile) : Container(),
                                    noof>50? Container(
                                      height: 300.0,
                                      child: ListView.builder
                                        (
                                          physics: NeverScrollableScrollPhysics(),
                                          itemCount: intervals.length,
                                          itemBuilder: (BuildContext ctxt, int index) {
                                          return Text(intervals[index].toLocal().toString() + '50 poeple',
                                            textAlign: TextAlign.center,
                                             style:  GoogleFonts.getFont( 'Acme',
                                              textStyle:TextStyle(
                                                color:currentColor ,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 25,
                                              
                                              )),
                                          );
                                          }
                                        ),
                                    )
                                    :Container(),
                                    Row(
                                      children: [
                                        Text('Not satisfied?',
                                          textAlign: TextAlign.center,
                                             style:  GoogleFonts.getFont( 'Acme',
                                              textStyle:TextStyle(
                                                color:currentColor ,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 25,
                                              
                                              )),
                                        ),
                                        
                                      TextButton(
                                        child: Text('Continue editing',
                                          textAlign: TextAlign.center,
                                             style:  GoogleFonts.getFont( 'Acme',
                                              textStyle:TextStyle(
                                                color:currentColor ,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 25,
                                              
                                              )),
                                        ),
                                        onPressed: ()=> Navigator.pop(context),
                                      )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Share it: ', textAlign: TextAlign.center,
                                             style:  GoogleFonts.getFont( 'Acme',
                                              textStyle:TextStyle(
                                                color:currentColor ,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 25,
                                              
                                              )),),
                                        
                                      IconButton(
                                        icon: Icon(Icons.share),
                                        onPressed: () async {
                                          // Share.shareFiles([_imageFile], text: 'You');
                                          // await Share.file('esys image', 'esys.png', _imageFile , 'image/png');
                                          String dir = (await getApplicationDocumentsDirectory()).path;
                                          String fullPath = '$dir/def.png';
                                          print("local file full path $fullPath");
                                          File file = File(fullPath);
                                          await file.writeAsBytes(_imageFile);
                                          print(file.path);
                                          final result = await ImageGallerySaver.saveImage(_imageFile);
                                          print(result);
                                          Share.shareFiles([file.path], text: 'You are invited!');
                                        },
                                      )
                                      ],
                                    ),
                                  ],
                                )),
                              ),
                            );
                          }).catchError((onError) {
                            print(onError);
                          });}
                        },
              ),
              SizedBox(
                        height: 32,
                ),
          
                      ]
            // ),
        ),
                  ))
                  ),
    );
    
    }



Future _showDialog(context) async {
 return await showDialog<void>(
   context: context,
   builder: (BuildContext context) {
     return AlertDialog(
       content: StatefulBuilder(
         builder: (BuildContext context, StateSetter setState) {
           return Column(
             mainAxisSize: MainAxisSize.min,
             children: <Widget>[
               Text('Choose your font style:'),
                DropdownButton<String>(
                        
                          hint: Text('Choose font style'), 
                           value: fam,
                          items: <String>['Acme', 'Faustina', 'Dancing Script', 'Lobster', 'Great Vibes','Architects Daughter'].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value,
                                style:  GoogleFonts.getFont(value)
                              ),
                              
                            );
                          }).toList(),
                          onChanged: (String f) {
                            setState((){
                              fam = f;
                            });
                            print(fam);
                          },)
             ]);
             }
           ));
         },
       
 );
}}
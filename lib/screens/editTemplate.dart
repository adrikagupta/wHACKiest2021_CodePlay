import 'package:flutter/material.dart';
import 'package:network_image_to_byte/network_image_to_byte.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

// import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as ui;

class EditTemplate extends StatefulWidget {
  const EditTemplate(this.image);
  final String image;
  @override
  _EditTemplateState createState() => _EditTemplateState();
}

class _EditTemplateState extends State<EditTemplate> {
  Uint8List byteImage;

  Future<void> networkToByte() async {
  
    Uint8List byteImage1 = await networkImageToByte(widget.image);
    setState((){
      byteImage = byteImage1;
    });
    }
  // void initState() async {
  //   super.initState();
  // }
  File _watermarkedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Template'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.35,
            child: Image.network(
              widget.image,
              // fit: BoxFit.fitWidth,
            )
          ),
          TextButton(
            child: Text('Generate'),
            onPressed: () async {
            print('pressed');
            await networkToByte();
              ui.Image originalImage = ui.decodeImage(byteImage);
              //Image.network(widget.image)
              //ui.decodeImage(_originalImage.readAsBytesSync());
              ui.drawString(originalImage, ui.arial_24, 100, 120, 'Think Different');
               List<int> wmImage = ui.encodePng(originalImage);
                  setState(() {
                    _watermarkedImage = File.fromRawPath(Uint8List.fromList(wmImage));
                  });

                },
              ),
          _watermarkedImage!=null?
              // Image.file(_watermarkedImage)
              Text('okkkk')
                  : Text('llolololol'),

        ],
      )
    );
  }
}
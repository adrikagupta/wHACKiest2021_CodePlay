import 'package:flutter/material.dart';

class EditTemplate extends StatefulWidget {
  const EditTemplate(this.image);
  final String image;
  @override
  _EditTemplateState createState() => _EditTemplateState();
}

class _EditTemplateState extends State<EditTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Template'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height*0.75,
        child: Image.network(
          widget.image,
          fit: BoxFit.fitWidth,
        )
      )
    );
  }
}
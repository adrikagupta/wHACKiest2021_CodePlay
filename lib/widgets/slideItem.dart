import 'package:flutter/material.dart';
import '../models/slide.dart';




class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            
            color: Colors.grey.shade100,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset(10, 10),
                blurRadius: 10,
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.06),
                offset: Offset(-10, -10),
                blurRadius: 10,
              ),
            ],
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(slideList[index].imageurl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          slideList[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(56, 173, 169,1.0),
          ),
        ),
      ],
    );
  }
}
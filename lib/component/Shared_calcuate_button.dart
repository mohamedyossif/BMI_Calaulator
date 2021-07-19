import 'package:flutter/material.dart';

import '../constants.dart';
class CalaculateButton extends StatelessWidget {
  CalaculateButton({this.height,this.weight,@required this.title,this.onPressButton});
  final int ?height;
   final int ?weight;
   final String ?title;
   final  onPressButton;
   


  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextButton(
              onPressed: onPressButton,
              child: Text(
                '$title',
                style: KTextStyleTitle,
              ),
            ),
          );
  }
}
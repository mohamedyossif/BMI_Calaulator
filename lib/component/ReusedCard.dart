import 'package:flutter/material.dart';

class ResuedCard extends StatelessWidget {
  final onPress;
  final colour;
  final iconCard;
  ResuedCard({this.iconCard, this.colour, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(12.0),
        child: iconCard,
        decoration: BoxDecoration(color:Colors.grey[600] ,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: colour,width: 5.0) 
        ),
      ),
      onTap: onPress,
    );
  }
}

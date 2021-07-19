import 'package:bmi_cat/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconCard extends StatelessWidget {
  final  label;
  final  icon;
  IconCard({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 100,
          color: Colors.white,
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          label,
          style: KTextStyleTitle,
        ),
      ],
    );
  }
}

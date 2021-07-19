import 'package:flutter/material.dart';

import '../constants.dart';

class SharedRow extends StatelessWidget {
  final String? unit;
  final onpressed1;
  final onpressed2;
  final int? value;
  SharedRow({this.value, this.unit, this.onpressed1, this.onpressed2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            style: KButtonStyle,
            onPressed: onpressed1,
            child: Icon(
              Icons.remove,
              color: Colors.white,
              size: 28,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '$value',
                style: KTextbody,
              ),
              Text(
                '$unit',
                textAlign: TextAlign.start,
              )
            ],
          ),
          ElevatedButton(
            style: KButtonStyle,
            onPressed: onpressed2,
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}

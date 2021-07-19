import 'package:flutter/material.dart';

import '../constants.dart';

Widget TitleShared(String title) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 14.0,
    ),
    child: Text(
      title,
      style: KTextStyleTitle,
    ),
  );
}

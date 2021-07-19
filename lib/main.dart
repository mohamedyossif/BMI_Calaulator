import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/homescreen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: KThemData,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

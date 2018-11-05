import 'package:flutter/material.dart';
import 'package:helloflutter/categoryroute.dart';

void main() {
  runApp(UnitConverter());
}

class UnitConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryRoute(),
    );
  }
}//fin Unitconverter

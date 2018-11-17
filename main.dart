import 'package:flutter/material.dart';
import 'package:login_splash/login_page.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        accentColor: Colors.cyan[600],
        primaryColor: Colors.cyan,

      ),
      home:LoginPage(),
    )
  );
}

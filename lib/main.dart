import 'package:covid19_app/datasource.dart';
import 'package:covid19_app/naviScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
        primaryColor: primaryBlack
      ),
      home: NaviScreen(),
    )
  );
}
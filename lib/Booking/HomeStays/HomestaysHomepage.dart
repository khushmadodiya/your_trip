import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeStays extends StatefulWidget{
  @override
  State<HomeStays> createState() => _HomeStaysState();
}

class _HomeStaysState extends State<HomeStays> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("HomeStays"),),
    );

  }
}
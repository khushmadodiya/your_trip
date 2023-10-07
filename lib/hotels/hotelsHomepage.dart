import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hotel extends StatefulWidget{
  @override
  State<hotel> createState() => _hotelState();
}

class _hotelState extends State<hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Hotels"),),
    );

  }
}
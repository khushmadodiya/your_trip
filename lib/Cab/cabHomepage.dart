import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cab extends StatefulWidget{
  @override
  State<Cab> createState() => _CabState();
}

class _CabState extends State<Cab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Cab"),),
    );

  }
}
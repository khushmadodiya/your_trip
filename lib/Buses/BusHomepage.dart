import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buses extends StatefulWidget{
  @override
  State<Buses> createState() => _BusesState();
}

class _BusesState extends State<Buses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Buses"),),
    );

  }
}
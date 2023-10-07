import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Train extends StatefulWidget{
  @override
  State<Train> createState() => _TrainState();
}

class _TrainState extends State<Train> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Train"),),
    );

  }
}
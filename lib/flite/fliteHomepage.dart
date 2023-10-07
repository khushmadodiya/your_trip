import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flite extends StatefulWidget{
  @override
  State<Flite> createState() => _FliteState();
}

class _FliteState extends State<Flite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Flite"),),
    );

  }
}
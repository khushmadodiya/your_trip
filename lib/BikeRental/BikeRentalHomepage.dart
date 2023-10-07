import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BikeRental extends StatefulWidget{
  @override
  State<BikeRental> createState() => _BikeRentalState();
}

class _BikeRentalState extends State<BikeRental> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("BikeRental"),),
    );

  }
}
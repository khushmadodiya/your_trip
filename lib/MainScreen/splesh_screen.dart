import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/Account/LogIn.dart';
import 'package:temp/main.dart';

import '../Assistant_method/assitant_method.dart';
import '../Globle/globle.dart';

class splesh extends StatefulWidget{

  @override
  State<splesh> createState() => _spleshState();
}

class _spleshState extends State<splesh> {
  stimer()async{
    Timer(Duration(seconds: 3), () async{
      if(await firebaseAuth.currentUser != null){
        firebaseAuth.currentUser !=null ? AssistantMethod.readCurrenOnlinUserInfo() : null;
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
      }
      else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    stimer();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Your Trip",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/main.dart';

import '../Globle/globle.dart';

class lang extends StatefulWidget {
  const lang({super.key});

  @override
  State<lang> createState() => _langState();
}

class _langState extends State<lang> {

  Widget build(BuildContext context) {
    bool darkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;
      return Scaffold(
        appBar: AppBar(
          title: Text('Select Language'),
          backgroundColor: darkTheme ? Colors.amber.shade400 : Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             InkWell(
               child: Container(
                 width: 200,
                 height: 40,
                 decoration: BoxDecoration(
                   color: darkTheme ? Colors.amber.shade400 : Colors.blue,
                   borderRadius: BorderRadius.circular(20),

                 ),
                 child: Center(child: Text("English",style:TextStyle(fontSize: 15,color: Colors.white) ,)),
               ),
               onTap: (){
                 setState(() {
                   langs = true;
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                 });
               },
             ),
             SizedBox(height: 20,),
             InkWell(
               child: Container(
                 width: 200,
                 height: 40,
                 decoration: BoxDecoration(
                   color: darkTheme ? Colors.amber.shade400 : Colors.blue,
                   borderRadius: BorderRadius.circular(20),

                 ),
                 child: Center(child: Text("Hindi",style:TextStyle(fontSize: 15,color: Colors.white) ,)),
               ),
               onTap: (){
                 setState(() {
                   langs = false;
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                 });
               },
             ),

           ],
          ),
        ),

      );
    }
  }

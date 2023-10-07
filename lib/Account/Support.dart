import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Support extends StatefulWidget{
  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 70,
        width: 80,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                CircleAvatar(
                  // backgroundImage:NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.veryicon.com%2Ficons%2Finternet--web%2F55-common-web-icons%2Fperson-4.html&psig=AOvVaw2pqgwRplozF4WeDCmfRHpH&ust=1696162446868000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNjDzdSn0oEDFQAAAAAdAAAAABAE'), // Replace with your user's profile image
                  // backgroundImage: AssetImage('assets/images/p.png'),
                  radius: 20, // Adjust the radius as needed
                  child: Icon(
                    Icons.message, // Replace with your desired icon
                    size: 30, // Adjust the icon size as needed
                    color: Colors.black87, // Icon color
                  ),

                ),
                SizedBox(height: 1,),
                Text('Support'),
              ],
            ),

          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SupportCode()));
          },
        ),
      ),
    );
  }
}
class SupportCode extends StatefulWidget{
  @override
  State<SupportCode> createState() => _SupportCodeState();
}

class _SupportCodeState extends State<SupportCode> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Support'),),

  );
  }
}

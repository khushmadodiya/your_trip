import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget{
  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    bool darkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;
    // TODO: implement build
    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 70,
        width: 60,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                CircleAvatar(
                  // backgroundImage:NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.veryicon.com%2Ficons%2Finternet--web%2F55-common-web-icons%2Fperson-4.html&psig=AOvVaw2pqgwRplozF4WeDCmfRHpH&ust=1696162446868000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNjDzdSn0oEDFQAAAAAdAAAAABAE'), // Replace with your user's profile image
                  // backgroundImage: IconData(Icons.person as int),
                  radius: 20, // Adjust the radius as needed
                  child: Icon(
                    Icons.person, // Replace with your desired icon
                    size: 40, // Adjust the icon size as needed
                    color: darkTheme ? Colors.amber.shade400:Colors.black, // Icon color
                  ),

                ),
                SizedBox(height: 1,),
                Text('Account',style: TextStyle(fontSize: 12, color:Colors.black,),),
              ],
            ),
          ),
          onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAccountcode()));
          },
        ),
      ),
    );


  }
}
class MyAccountcode extends StatefulWidget{
  @override
  State<MyAccountcode> createState() => _MyAccountcodeState();
}

class _MyAccountcodeState extends State<MyAccountcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Account'),),

    );
  }
}



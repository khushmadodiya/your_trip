import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/Account/SignUp.dart';

class RegisteAndSignin extends StatefulWidget{
  @override
  State<RegisteAndSignin> createState() => _RegisteAndSigninState();
}

class _RegisteAndSigninState extends State<RegisteAndSignin> {
  @override
  Widget build(BuildContext context) {
   return InkWell(
     child: Row(
       children: [
         SizedBox(width: 20,),
         CircleAvatar(
           // backgroundImage:NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.veryicon.com%2Ficons%2Finternet--web%2F55-common-web-icons%2Fperson-4.html&psig=AOvVaw2pqgwRplozF4WeDCmfRHpH&ust=1696162446868000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNjDzdSn0oEDFQAAAAAdAAAAABAE'), // Replace with your user's profile image
           backgroundImage: AssetImage('assets/images/p.png'),
           radius: 20, // Adjust the radius as needed
         ),
         SizedBox(width: 10,),
         Text("Register/Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
       ],
     ),
     onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
     },
   );
  }
}
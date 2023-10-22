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
    bool darkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;
   return InkWell(
     child: Row(
       children: [
         SizedBox(width: 20,),
         Icon(Icons.person, size: 40, // Adjust the icon size as needed
          color: darkTheme ? Colors.amber.shade400:Colors.black, ),
         SizedBox(width: 10,),
         Text("Register/Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color:Colors.black,),)
       ],
     ),
     onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
     },
   );
  }
}
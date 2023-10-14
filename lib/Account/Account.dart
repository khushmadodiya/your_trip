import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/Account/ProfileContainer.dart';
import 'package:temp/Account/UserSection.dart';
import 'package:temp/main.dart';
import 'package:temp/theme.dart';
import 'ResisterAndSignin.dart';

class Account extends StatefulWidget{
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return
    Stack(
       children: [
         MyHomePage(),
         Padding(
           padding: const EdgeInsets.only(top: 0,left: 0,bottom: 0),
           child: Container(
             width: 300,
             height: double.infinity,
             child: Scaffold(
               appBar: AppBar(title: Text("profile"),backgroundColor: Colors.deepPurple,),
               body: Container(
                 height: double.infinity,
                 width: double.infinity,
                 color: Colors.deepPurple.shade50,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.vertical,
                     child: Column(
                       children: [
                         ProfilContainer(
                           width: 280,
                           height: 70,
                           child: RegisteAndSignin(),
                         ),
                         const SizedBox(height: 10,),
                         ProfilContainer(
                           width: 280,
                           height: 80,
                           child: UserSection(),
                         ),
                         const SizedBox(height: 10,),
                         InkWell(
                           child: const ProfilContainer(width: 280,
                               height: 50,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon( Icons.sports_esports,size: 35,),
                                  ),
                                  SizedBox(width: 20,),
                                  Text('Coupon Lounge',style: TextStyle(fontSize: 15),),
                                  SizedBox(width: 30,),
                                  Icon(Icons.chevron_right_outlined,color: Colors.deepPurple,)

                                ],
                              ),

                           ),
                           onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));}
                         ),
                         const SizedBox(height: 10,),
                         const ProfilContainer(
                             width: 280,
                             height: 140,
                             child: Column(
                               // mainAxisAlignment: MainAxisAlignment.s,
                               children: [
                                 SizedBox(height: 10,),
                                 Text('My Trips',style: TextStyle(fontWeight: FontWeight.w600),),
                                 SizedBox(height: 10,),
                                 ProfilContainer(
                                   width: 260,
                                   height: 40,
                                   colors: Colors.deepPurple,
                                   child: Center(child: Text("View/Manage Trip",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),)),
                                 ),
                                 SizedBox(height: 5,),
                                 ProfilContainer(
                                   width: 260,
                                   height: 40,
                                   colors: Colors.deepPurple,
                                   child: Center(child: Text("Wishlist",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),)),

                                 ),




                               ],
                             ),
                         )


                       ],
                     ),
                   ),
                 ),
               ),



             ),

       ),
         ),
       ]
     );

  }
}


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/Account/ProfileContainer.dart';
import 'package:temp/Account/UserSection.dart';
import 'package:temp/Account/language.dart';
import 'package:temp/main.dart';
import 'package:temp/theme.dart';
import '../Globle/globle.dart';
import 'ResisterAndSignin.dart';

class Account extends StatefulWidget{
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    bool darkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;
    // TODO: implement build
   return
    Stack(
       children: [
         MyHomePage(),
         Padding(
           padding: const EdgeInsets.only(top: 0,left: 0,bottom: 0),
           child: SizedBox(
             width: 260,
             height: double.infinity,
             child: Scaffold(
               appBar: AppBar(title: Text( langs ?"profile":'प्रोफाइल'),backgroundColor: darkTheme?Colors.amber.shade400:Colors.blue,),
               body: Container(
                 height: double.infinity,
                 width: double.infinity,
                 color: darkTheme ? Colors.black87:Colors.deepPurple.shade50,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.vertical,
                     child: Column(
                       children: [
                         ProfilContainer(
                           width: 260,
                           height: 70,
                           child: RegisteAndSignin(),
                         ),
                         const SizedBox(height: 10,),
                         ProfilContainer(

                           width: 260,
                           height: 80,
                           child: UserSection(),
                         ),
                         const SizedBox(height: 10,),
                         InkWell(
                           child:  ProfilContainer(width: 280,
                               height: 50,
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon( Icons.sports_esports,size: 35,),
                                  ),
                                  SizedBox(width: 20,),
                                  Text(langs ? 'Coupon Lounge': 'कूपन लैंग्वेज',style: TextStyle(color: Colors.black,fontSize: 15),),
                                  SizedBox(width: 30,),
                                  Icon(Icons.chevron_right_outlined,color: darkTheme ? Colors.amber.shade400:Colors.blue)

                                ],
                              ),

                           ),
                           onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));}
                         ),
                         const SizedBox(height: 10,),
                          ProfilContainer(
                             width: 260,
                             height: 130,
                             child: Column(
                               // mainAxisAlignment: MainAxisAlignment.s,
                               children: [
                                 SizedBox(height: 10,),
                                 Text(langs ? 'My Trips': 'माई ट्रिप',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                 SizedBox(height: 10,),
                                 ProfilContainer(
                                   width: 240,
                                   height: 35,
                                   colors: darkTheme?Colors.amber.shade400:Colors.blue,
                                   child: Center(child: Text(langs ? "View/Manage Trip": 'व्यू /मैनेज ट्रिप',style: TextStyle(fontSize: 15,color:darkTheme ?Colors.black87:Colors.white,fontWeight: FontWeight.w400),)),
                                 ),
                                 SizedBox(height: 5,),
                                 ProfilContainer(
                                   width: 240,
                                   height: 35,
                                   colors: darkTheme?Colors.amber.shade400:Colors.blue,
                                   child: Center(child: Text(langs ? "Wishlist": 'विशलिस्ट',style: TextStyle(fontSize: 15,color: darkTheme ?Colors.black87 :Colors.white,fontWeight: FontWeight.w400),)),

                                 ),
                               ],
                             ),
                         ),
                         SizedBox(height: 10,),
                          ProfilContainer(
                           width: 260,
                           height: 170,
                           child: Column(
                             // mainAxisAlignment: MainAxisAlignment.s,
                             children: [
                               SizedBox(height: 10,),
                               Text(langs ? 'Rewards': "रिवार्ड्स",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                               SizedBox(height: 10,),
                               ProfilContainer(
                                 width: 240,
                                 height: 35,
                                 colors:darkTheme?Colors.amber.shade400:Colors.blue,
                                 child: Center(child: Text(langs ? "Gift Cards":"गिफ्ट कार्ड्स",style: TextStyle(fontSize: 15,color:darkTheme ?Colors.black87:Colors.white,fontWeight: FontWeight.w400),)),
                               ),
                               SizedBox(height: 5,),
                               ProfilContainer(
                                 width: 240,
                                 height: 35,
                                 colors:darkTheme?Colors.amber.shade400:Colors.blue,
                                 child: Center(child: Text(langs ? "Rrewards":"रिवार्ड्स",style: TextStyle(fontSize: 15,color: darkTheme ?Colors.black87:Colors.white,fontWeight: FontWeight.w400),)),

                               ),
                               SizedBox(height: 5,),
                               ProfilContainer(
                                 width: 240,
                                 height: 35,
                                 colors: darkTheme?Colors.amber.shade400:Colors.blue,
                                 child: Center(child: Text(langs ? "Refer & Earn": "रेफर & अर्न",style: TextStyle(fontSize: 15,color:darkTheme ?Colors.black87:Colors.white,fontWeight: FontWeight.w400),)),

                               ),
                             ],
                           ),
                         ),
                         const SizedBox(height: 10,),
                          ProfilContainer(
                           width: 260,
                           height: 130,
                           child: Column(
                             // mainAxisAlignment: MainAxisAlignment.s,
                             children: [
                               SizedBox(height: 10,),
                               Text(langs ? '0Setting': "सेटिंग",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                               SizedBox(height: 10,),
                               ProfilContainer(
                                 width: 240,
                                 height: 35,
                                 colors: darkTheme?Colors.amber.shade400:Colors.blue,
                                 child: Center(child: Text(langs ? "Language": "भाषा",style: TextStyle(fontSize: 15,color: darkTheme ?Colors.black87:Colors.white,fontWeight: FontWeight.w400),)),
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>lang()));
                                 },
                               ),
                               SizedBox(height: 5,),
                               ProfilContainer(
                                 width: 240,
                                 height: 35,
                                 colors:darkTheme?Colors.amber.shade400:Colors.blue,
                                 child: Center(child: Text(langs ? "Country": "देश",style: TextStyle(fontSize: 15,color: darkTheme ?Colors.black87:Colors.white,fontWeight: FontWeight.w400),)),
                                 onTap: (){
                                   setState(() {
                                   });
                                 },
                               ),
                             ],
                           ),
                         ),


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


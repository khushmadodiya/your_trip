import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../Booking/BikeRental/BikeRentalHomepage.dart';
import '../Booking/Buses/BusHomepage.dart';
import '../Booking/Cab/cabHomepage.dart';
import '../Booking/HomeStays/HomestaysHomepage.dart';
import '../Booking/Train/TrainHomepage.dart';
import '../Booking/flite/fliteHomepage.dart';
import '../Booking/hotels/hotelsHomepage.dart';
import '../Globle/globle.dart';
import '../MainScreen/CusttomButton.dart';
import '../Map/MapHomepage.dart';
import '../main.dart';

class Screen1 extends StatefulWidget{
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  late MediaQueryData mediaQueryData = MediaQuery.of(context);

  var videourl = "https://youtu.be/x_q0KIpIllE?si=g0hOL76DJcqYPn4o";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videourl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
          hideControls: true,
          controlsVisibleAtStart: false,
          autoPlay: false,
          mute: true,
          // isLive :true,
          hideThumbnail: false,
          disableDragSeek: false,
          loop: true,
          startAt: 4
      ),


    );
  }

  Widget build(BuildContext context) {
    bool darkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;
    // TODO: implement build
    return Container(
      color: bgcolorScreen,
      width: double.infinity,
      height: 400,
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: darkTheme? Colors.black87:Colors.white70,
                ),
                height: 250,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,

                  aspectRatio: 16/10,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: darkTheme? Colors.black87:Colors.white70,
                ),
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.count(
                    crossAxisCount: 4,
                    // mainAxisSpacing: 50,
                    crossAxisSpacing: 5,
                    children: [
                      CustomIconButton(
                        text: langs ? 'Hotel': 'होटल',
                        iconData: Icons.hotel_class,
                        Iconcolor: darkTheme? Colors.amber.shade400:Colors.blue,
                        Containercolor: bgcolorScreen,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>hotel()));
                        },
                      ),
                      CustomIconButton(
                        text: langs ? 'Flight' : 'फ्लाइट',
                        Iconcolor: darkTheme? Colors.amber.shade400:Colors.blue,
                        Containercolor:bgcolorScreen,
                        iconData: Icons.flight_outlined,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Flite()));
                        },
                      ),
                      CustomIconButton(
                        Iconcolor: darkTheme? Colors.amber.shade400:Colors.blue,
                        Containercolor: bgcolorScreen,
                        text: langs ? 'Train':'ट्रेन',
                        iconData: Icons.train_sharp,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Train()));
                        },
                      ),
                      CustomIconButton(
                        Iconcolor: darkTheme? Colors.amber.shade400:Colors.blue,
                        Containercolor:bgcolorScreen,
                        text: langs ? 'Bus' : 'बस',
                        iconData: Icons.directions_bus_outlined,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Buses()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: darkTheme? Colors.black87:Colors.white70,
                ),
                height: 180,
                child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: GridView.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 5,
                        children: [
                          CustomIconButton(
                            Iconcolor:darkTheme? Colors.black87:Colors.white,
                            Containercolor: darkTheme?Colors.amber.shade400:Colors.blue,
                            text:  langs ? 'Hotel': 'होटल',
                            iconData: Icons.hotel_class,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>hotel()));
                            },
                          ),
                          CustomIconButton(
                            Iconcolor:darkTheme? Colors.black87:Colors.white,
                            Containercolor: darkTheme?Colors.amber.shade400:Colors.blue,
                            text: langs ? 'Flight' : 'फ्लाइट',
                            iconData: Icons.flight_outlined,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Flite()));
                            },
                          ),
                          CustomIconButton(
                            Iconcolor:darkTheme? Colors.black87:Colors.white,
                            Containercolor: darkTheme?Colors.amber.shade400:Colors.blue,
                            text:langs ? 'Train':'ट्रेन',
                            iconData: Icons.train_sharp,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Train()));
                            },
                          ),
                          CustomIconButton(
                            Iconcolor:darkTheme? Colors.black87:Colors.white,
                            Containercolor: darkTheme?Colors.amber.shade400:Colors.blue,
                            text: langs ? 'Bus' : 'बस',
                            iconData: Icons.directions_bus_outlined,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Buses()));
                            },
                          ),
                          CustomIconButton(
                            Iconcolor:darkTheme? Colors.black87:Colors.white,
                            Containercolor: darkTheme?Colors.amber.shade400:Colors.blue,
                            text:  langs ? 'Cab' : 'कैब',
                            iconData: Icons.car_rental,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cab()));
                            },
                          ),
                          CustomIconButton(
                            Iconcolor:darkTheme? Colors.black87:Colors.white,
                            Containercolor: darkTheme?Colors.amber.shade400:Colors.blue,
                            text: langs ? 'Bike Rental' : 'बाइक रैंटल',
                            iconData: Icons.motorcycle,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BikeRental()));
                            },
                          ),

                          CustomIconButton(
                            Iconcolor:darkTheme? Colors.black87:Colors.white,
                            Containercolor: darkTheme?Colors.amber.shade400:Colors.blue,
                            text: langs ? 'Homestays': 'होमस्टेस',
                            iconData: Icons.home,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeStays()));
                            },
                          ),
                          CustomIconButton(
                            Iconcolor:darkTheme? Colors.black87:Colors.white,
                            Containercolor: darkTheme?Colors.amber.shade400:Colors.blue,
                            text: langs ? 'Map': 'मेप',
                            iconData: Icons.location_on_outlined,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MapPage()));
                            },
                          ),

                        ]
                    )
                ),
              )
            ],
          )),
    );
  }
}

import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temp/Account/Account.dart';
import 'package:temp/BikeRental/BikeRentalHomepage.dart';
import 'package:temp/Buses/BusHomepage.dart';
import 'package:temp/HomeStays/HomestaysHomepage.dart';
import 'package:temp/Map/MapHomepage.dart';
import 'package:temp/Profile/profile.dart';
import 'package:temp/Train/TrainHomepage.dart';
import 'package:temp/flite/fliteHomepage.dart';
import 'package:temp/hotels/hotelsHomepage.dart';
import 'package:temp/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'Cab/cabHomepage.dart';
import 'MainScreen/BottomBar.dart';
import 'MainScreen/CusttomButton.dart';
import 'firebase_options.dart';
// import 'package:your_trip/Offers/video.dart';
final bgcolorScreen = Colors.deepPurple.shade50;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform,);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // statusBarColor: Colors.white,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
      ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.deepPurple,
          foregroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
        ),

      ),
    home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BoxDecoration box = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.green,
  );
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Screen3 (),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
        backgroundColor:Colors.deepPurple,
        title: Text("Your Trip"),
        leading:  Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            child: CircleAvatar(
               // backgroundImage:NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.veryicon.com%2Ficons%2Finternet--web%2F55-common-web-icons%2Fperson-4.html&psig=AOvVaw2pqgwRplozF4WeDCmfRHpH&ust=1696162446868000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNjDzdSn0oEDFQAAAAAdAAAAABAE'), // Replace with your user's profile image
             backgroundImage: AssetImage('assets/images/p.png'),
              radius: 20, // Adjust the radius as needed

            ),
            onTap: (){
             setState(() {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Account()));
             });
            },

        ),
      ),
      ),
      body: InkWell(
        onTap: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
          });
        },
        child: Container(
          child: PageView(
            controller: _pageController,
            children: _screens,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),

      bottomNavigationBar: CustomGradientBottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          _pageController.jumpToPage(index);
        });
      },
    ),

    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Screen3  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      color: bgcolorScreen,
      child: Image.asset('assets/images/khush.JPG'),
    );
  }
}
class Screen2  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
       height: 10,
      width: 10,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/baby.jpeg'),
           // Adjust the fit as needed
          opacity:  10.0,
        ),
      ),
    );

  }
}
class Screen1 extends StatefulWidget{
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
        autoPlay: true,
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
    // TODO: implement build
    return Container(
      color: bgcolorScreen,
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
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
                  color: Colors.white70,
                ),
                height: 180,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 5,
                        children: [
                          CustomIconButton(
                            text: 'Hotel',
                            iconData: Icons.hotel_class,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>hotel()));
                            },
                          ),
                          CustomIconButton(
                            text: 'Flight',
                            iconData: Icons.flight_outlined,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Flite()));
                            },
                          ),
                          CustomIconButton(
                            text: 'Train',
                            iconData: Icons.train_sharp,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Train()));
                            },
                          ),
                          CustomIconButton(
                            text: 'Bus',
                            iconData: Icons.directions_bus_outlined,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Buses()));
                            },
                          ),
                          CustomIconButton(
                            text: 'Cab',
                            iconData: Icons.car_rental,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cab()));
                            },
                          ),
                          CustomIconButton(
                            text: 'Bike Rental',
                            iconData: Icons.motorcycle,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BikeRental()));
                            },
                          ),

                          CustomIconButton(
                            text: 'Homestays',
                            iconData: Icons.home,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeStays()));
                            },
                          ),
                          CustomIconButton(
                            text: 'Map',
                            iconData: Icons.map,
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


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserNotification extends StatefulWidget{
  @override
  State<UserNotification> createState() => _UserNotificationState();
}

class _UserNotificationState extends State<UserNotification> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 70,
        width: 82,
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
                    Icons.notification_important_rounded,
                    // Replace with your desired icon
                    size: 30, // Adjust the icon size as needed
                    color: Colors.black, // Icon color
                  ),

                ),
                SizedBox(height: 1,),
                Text('Notification'),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationCode()));
          },
        ),
      ),
    );
  }
}
class NotificationCode extends StatefulWidget{
  @override
  State<NotificationCode> createState() => _NotificationCodeState();
}

class _NotificationCodeState extends State<NotificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification'),),

    );
  }
}
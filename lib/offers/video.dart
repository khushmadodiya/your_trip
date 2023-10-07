

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class video extends StatefulWidget{
  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('lib/offers/first.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Set the width of the container
      height: 200, // Set the height of the container
      child: _controller.value.isInitialized
          ? AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      )
          : CircularProgressIndicator(strokeWidth: 4.2,),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:temp/theme.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatefulWidget {
  final String text;
  final IconData iconData;
  void  Function() onPressed;

  CustomIconButton({
    required this.text,
    required this.iconData,
    required this.onPressed,
  });

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,


      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10.0),

            ),
            width: 50,
            height: 50,
            child: IconButton(
              icon: Center(child: Icon(widget.iconData)),
              color: Colors.white,
              iconSize: 30,
              onPressed: widget.onPressed,
            ),
          ),
          Container(
            height: 20,

            child: Center(child: Text('${widget.text}')),
          ),
        ],
      ),
    );
  }
}

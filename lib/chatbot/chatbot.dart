import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
//


class ChatBot extends StatefulWidget {

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Center(child: Text("Your Trip")),
        ),
        body: Container(

          child:InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse("https://chat.openai.com/c/ec175586-21b7-44e2-b25b-2fff83479ebc")),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Flite extends StatefulWidget {
  const Flite({Key? key}) : super(key: key);

  @override
  State<Flite> createState() => _FliteState();
}

class _FliteState extends State<Flite> {

  double _progress = 0;
  late InAppWebViewController  inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{

        var isLastPage = await inAppWebViewController.canGoBack();

        if(isLastPage){
          inAppWebViewController.goBack();
          return false;
        }

        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              InAppWebView(
                initialUrlRequest: URLRequest(
                    url: Uri.parse("https://www.makemytrip.com/flights/")
                ),
                onWebViewCreated: (InAppWebViewController controller){
                  inAppWebViewController = controller;
                },
                onProgressChanged: (InAppWebViewController controller , int progress){
                  setState(() {
                    _progress = progress / 100;
                  });
                },
              ),
              _progress < 1 ? Container(
                child: LinearProgressIndicator(
                  value: _progress,
                ),
              ):SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
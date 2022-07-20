import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(home: demo(),));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          ElevatedButton(onPressed: () async {
           await launch("https://play.google.com/store/apps/details?id=jp.co.goodroid.hyper.snow");
            // await launchUrl(Uri.parse("https://play.google.com/store/apps/details?id=jp.co.goodroid.hyper.snow"));
          }, child: Text("Play store")),
          Expanded(
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: "https://cdmi.in/",
            ),
          ),

        ],
      )),
    );
  }
}



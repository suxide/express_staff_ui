import 'dart:async';
import 'package:express_staff/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:loading_animations/loading_animations.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context, CupertinoPageRoute(builder: (_) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/splashscreenbg.jpg'))),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Column(
              children: <Widget>[
                LoadingBumpingLine.circle(
                    size: 28, backgroundColor: CupertinoColors.systemGrey2),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 26,
                  width: 95,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

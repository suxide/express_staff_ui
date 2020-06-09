import 'dart:async';
import 'dart:convert';
import 'package:express_staff/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                  size: 28,
                  backgroundColor: Colors.grey[300],
                ),
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


import 'package:express_staff/pages/splashscreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffe8e8e8),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Color(0xffffffff),
        )
      ),
    );
  }
}

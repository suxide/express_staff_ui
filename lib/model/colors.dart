import 'package:flutter/cupertino.dart';

class ColorsData{
  final Color colors;

  ColorsData({this.colors});
}

List<ColorsData> colordata=[
  ColorsData(colors: CupertinoColors.activeBlue),
  ColorsData(colors: CupertinoColors.activeGreen),
  ColorsData(colors: CupertinoColors.activeOrange)
];
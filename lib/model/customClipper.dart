import 'dart:ui';

import 'package:flutter/material.dart';

class CustomShap extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 82);
    path.quadraticBezierTo(width / 2, height, width, height - 115);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
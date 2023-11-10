import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 50); // starting point
    path.lineTo(0, size.height); // bottom-left corner
    path.lineTo(size.width, size.height); // bottom-right corner
    path.lineTo(size.width / 1.5, 20); // top center
    path.lineTo(0, 20); // back to starting point to close the shape
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

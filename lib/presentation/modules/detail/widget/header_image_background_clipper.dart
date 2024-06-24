import 'dart:math';

import 'package:flutter/material.dart';

class HeaderImageBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 2 * size.height / 3);
    path.arcToPoint(
      Offset(0, 2 * size.height / 3),
      radius: Radius.circular(size.height*1.5),
      clockwise: true,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

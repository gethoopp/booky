import 'package:flutter/material.dart';

class SmallCLip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 400;
    final double _yScaling = size.height / 474;
    path.lineTo(209 * _xScaling, 455 * _yScaling);
    path.cubicTo(
      370.267 * _xScaling,
      455 * _yScaling,
      501 * _xScaling,
      324.267 * _yScaling,
      501 * _xScaling,
      163 * _yScaling,
    );
    path.cubicTo(
      501 * _xScaling,
      1.73285 * _yScaling,
      370.267 * _xScaling,
      -129 * _yScaling,
      209 * _xScaling,
      -129 * _yScaling,
    );
    path.cubicTo(
      47.7328 * _xScaling,
      -129 * _yScaling,
      -83 * _xScaling,
      1.73285 * _yScaling,
      -83 * _xScaling,
      163 * _yScaling,
    );
    path.cubicTo(
      -83 * _xScaling,
      324.267 * _yScaling,
      47.7328 * _xScaling,
      455 * _yScaling,
      209 * _xScaling,
      455 * _yScaling,
    );
    path.cubicTo(
      209 * _xScaling,
      455 * _yScaling,
      209 * _xScaling,
      455 * _yScaling,
      209 * _xScaling,
      455 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

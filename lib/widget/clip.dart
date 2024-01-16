import 'package:flutter/material.dart';

class SmallCLip extends CustomClipper<Path> {
  @override
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(292 * _xScaling, 292 * _yScaling);
    path.cubicTo(
      400.267 * _xScaling,
      292 * _yScaling,
      529 * _xScaling,
      161 * _yScaling,
      584 * _xScaling,
      -0.000297784 * _yScaling,
    );
    path.cubicTo(
      524 * _xScaling,
      -0.000297784 * _yScaling,
      521.5 * _xScaling,
      -0.000435113 * _yScaling,
      292 * _xScaling,
      -0.000320672 * _yScaling,
    );
    path.cubicTo(
      130.733 * _xScaling,
      -0.000320672 * _yScaling,
      40 * _xScaling,
      0.000106812 * _yScaling,
      0 * _xScaling,
      -0.000297784 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      161.267 * _yScaling,
      130.733 * _xScaling,
      292 * _yScaling,
      292 * _xScaling,
      292 * _yScaling,
    );
    path.cubicTo(
      392 * _xScaling,
      492 * _yScaling,
      292 * _xScaling,
      292 * _yScaling,
      292 * _xScaling,
      292 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

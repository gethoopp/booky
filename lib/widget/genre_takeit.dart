import 'package:flutter/material.dart';

Padding genre_takeit (Size size) {
    return Padding(
                  padding: EdgeInsets.only(left: size.width * 0.23, top: 20),
                  child: const Row(
                    children: [Text('Genre : Fiction ')],
                  ),
                );
  }
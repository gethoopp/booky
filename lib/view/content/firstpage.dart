import 'package:booky/widget/appbar.dart';

import 'package:flutter/material.dart';


class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ApppBar(size: size),
            ),
          ],
        ),
      ),
    );
  }
}


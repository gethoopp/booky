import 'package:booky/widget/clip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ApppBar extends StatelessWidget {
  const ApppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.001,
        ),
        child: ClipPath(
          clipper: SmallCLip(),
          child: Container(
            height: size.height * 1,
            width: 450,
            color: Colors.green,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
          Text(
            'Booky',
            style: GoogleFonts.roboto(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 20),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(55),
        child: Text(
          'Recently Add',
          style: GoogleFonts.roboto(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontSize: 20),
        ),
      ),
    ]);
  }
}

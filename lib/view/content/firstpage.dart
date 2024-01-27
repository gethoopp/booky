
import 'package:booky/widget/appbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/gridmenu.dart';

class First extends StatelessWidget {
  const First({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.green,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ApppBar(size: size),
              Expanded(
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      elevation: 0,
                      shadowColor: Colors.white,
                      floating: false,
                      flexibleSpace: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Categories',
                          style: GoogleFonts.roboto(
                              color: Colors.green.shade600, fontSize: 20),
                        ),
                      ),
                    ),
                    SliverGrid(
                        delegate: SliverChildListDelegate([
                          Hero(
                            tag: 'Horror',
                            transitionOnUserGestures: true,
                            child: GestureDetector(
                              onTap: () => Get.toNamed('/Horor'),
                              child: menuColumn(
                                  image: 'Assets/image/image1.png',
                                  text: 'Horor'),
                            ),
                          ),
                          menuColumn(
                              image: 'Assets/image/image2.png', text: 'Young'),
                          menuColumn(
                              image: 'Assets/image/Image3.png',
                              text: 'Fantasy'),
                          GestureDetector(
                            onTap: () => Get.toNamed('/Fiction'),
                            child: Hero(
                              tag: 'Fiction',
                              child: menuColumn(
                                  image: 'Assets/image/Image4.png',
                                  text: 'Fiction'),
                            ),
                          ),
                          menuColumn(
                              image: 'Assets/image/Image5.png', text: 'Crime'),
                          menuColumn(
                              image: 'Assets/image/image 6.png',
                              text: 'Romance'),
                        ]),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 20,
                                childAspectRatio: 1))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

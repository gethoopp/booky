import 'package:booky/api/model/data.dart';
import 'package:booky/bloc/data_bloc_bloc.dart';
import 'package:booky/widget/clip.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class FictionPage extends StatelessWidget {
  const FictionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light),
      child: Scaffold(
        body: Column(
          children: [
            BlocBuilder<DataBlocBloc, DataBlocState>(
              builder: (context, state) {
                if (state is DataBlocInitial) {
                  return Expanded(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: CustomScrollView(
                        scrollDirection: Axis.vertical,
                        slivers: <Widget>[
                          SliverAppBar(
                            floating: true,
                            pinned: true,
                            stretch: true,
                            expandedHeight: 350,
                            collapsedHeight: 100,
                            flexibleSpace: Hero(
                              tag: 'Fiction',
                              child: ClipPath(
                                  clipper: SmallCLip(),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                      height: 400,
                                      child: detailAppbar(
                                          image: "Assets/image/Image4.png",
                                          text: "Fiction"),
                                    ),
                                  )),
                            ),
                          ),
                          SliverGrid(
                              delegate: SliverChildListDelegate([
                                SizedBox(
                                  width: 90,
                                  height: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                      ),
                                    ),
                                  ),
                                )
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
                  );
                } else if (state is DataSucces) {
                  final data = state.details;

                  return Expanded(
                    child: CustomScrollView(
                      scrollDirection: Axis.vertical,
                      slivers: <Widget>[
                        SliverAppBar(
                          floating: true,
                          pinned: true,
                          stretch: true,
                          expandedHeight: 350,
                          collapsedHeight: 100,
                          flexibleSpace: Hero(
                            tag: 'Fiction',
                            child: ClipPath(
                                clipper: SmallCLip(),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    height: 400,
                                    child: detailAppbar(
                                        image: "Assets/image/Image4.png",
                                        text: "Fiction"),
                                  ),
                                )),
                          ),
                        ),
                        SliverGrid(
                            delegate: SliverChildListDelegate([
                              GestureDetector(
                                onTap: () => Get.toNamed('/FictionTakeIt'),
                                child: detailmenu(data[1]!.details.image, data)),
                              GestureDetector(
                                onTap: () => Get.toNamed('/FictionTakeIt2'),
                                child: detailmenu(data[2]!.details.image, data)),
                              GestureDetector(
                                onTap: () => Get.toNamed('/FictionTakeIt3'),
                                child: detailmenu(data[0]!.details.image, data)),
                              detailmenu(data[4]!.details.image, data),
                              detailmenu(data[5]!.details.image, data),
                              detailmenu(data[6]!.details.image, data),
                              detailmenu(data[7]!.details.image, data),
                            ]),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: 0.7))
                      ],
                    ),
                  );
                }

                return Container();
              },
            )
          ],
        ),
      ),
    );
  }

  SizedBox detailmenu(String? images, List<Books?> data) {
    return SizedBox(
      width: 90,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.centerRight,
              image: CachedNetworkImageProvider(images!),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Container detailAppbar({String? image, String? text}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image!), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 59),
            child: Center(
              child: Text(
                text!,
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

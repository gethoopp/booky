 import 'package:booky/api/model/data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

SizedBox dataMethod(List<Books?> data, BuildContext context) {
  final size = MediaQuery.of(context).size;
    return SizedBox(
            height: 350,
            child: CustomScrollView(
              scrollDirection: Axis.horizontal,
              slivers: <Widget>[
                SliverList.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: size.height * 0.13),
                        child: CarouselSlider(
                          items: [
                            SizedBox(
                                width: 300,
                                height: 194,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                            data[0]!.details.image.toString()),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Text(data[0]!.details.nama.toString(),style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      )
                                    ],
                                  ),
                                )),
                            SizedBox(
                              width: 300,
                              height: 194,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          data[1]!.details.image.toString()),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Text(data[1]!.details.author.toString(),style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      )
                                    ],
                                  ),
                                )
                              ),
                            
                            SizedBox(
                              width: 300,
                              height: 194,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          data[2]!.details.image.toString()),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Text(data[2]!.details.author.toString(),style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      )
                                    ],
                                  ),
                                )
                              ),
                            
                            SizedBox(
                              width: 300,
                              height: 194,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          data[3]!.details.image.toString()),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Text(data[3]!.details.author.toString(),style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      )
                                    ],
                                  ),
                                )
                              ),
                            
                            SizedBox(
                              width: 300,
                              height: 194,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          data[4]!.details.image.toString()),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Text(data[4]!.details.author.toString(),style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      )
                                    ],
                                  ),
                                )
                              ),
                            
                          ],
                          options: CarouselOptions(
                            viewportFraction: 0.35,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      );
                    })
              ],
            ),
          );
  }
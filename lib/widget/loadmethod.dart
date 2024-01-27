
 import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

SizedBox loadMethod(BuildContext ctx) {
  final size = MediaQuery.of(ctx).size;
    return SizedBox(
            height: 350,
            child: Shimmer.fromColors(
             baseColor: Colors.grey,
             highlightColor: Colors.white,
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                slivers: <Widget>[
                  SliverList.builder(
                      itemCount: 5,
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
                                   
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                height: 194,
                                child: Container(
                                  decoration: BoxDecoration(
                                   
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                height: 194,
                                child: Container(
                                  decoration: BoxDecoration(
                                   
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                height: 194,
                                child: Container(
                                  decoration: BoxDecoration(
                                   
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                height: 194,
                                child: Container(
                                  decoration: BoxDecoration(
                                   
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
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
            ),
          );
  }
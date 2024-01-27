import 'package:booky/api/model/data.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Padding image_take_it(Size size, List<Books?> data, {required int id}) {
  return Padding(
    padding: EdgeInsets.only(top: size.height * 0.2),
    child: Container(
        width: 150,
        height: 198,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: CachedNetworkImageProvider(
                    data[id]!.details.image.toString()),
                fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 20, top: 15),
                    child: IconButton(
                        onPressed: (){
                           Get.dialog(
                            const Dialog(
                              backgroundColor: Colors.white,
                              child: SizedBox(
                                width: 200,
                                height: 50,
                              ),
                            )
                           );
                        },
                        icon: const Icon(Icons.book))),
                        
              ],
            ),
          ],
        )),
  );
}

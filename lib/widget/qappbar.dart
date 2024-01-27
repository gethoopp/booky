import 'package:flutter/material.dart';
import 'package:get/get.dart';



AppBar Qappbar(
    {required String text, required void Function()? func, IconData? icons}) {
  return AppBar(
    
    title: Center(
        child: Text(
      text,
      style: const TextStyle(color: Colors.white),
    )),
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // IconButton(onPressed: () {}, icon: Icon(icons)),
        IconButton(
            onPressed: func,
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ],
    ),
    actions: [
      Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(icons),
            style: ButtonStyle(iconColor: MaterialStateProperty.all(Colors.white)),
          );
        }
      )
    ],
    backgroundColor: Colors.green[600],
    toolbarHeight: 50,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Err extends StatefulWidget {
  const Err({super.key});

  @override
  State<Err> createState() => _ErrState();
}

class _ErrState extends State<Err> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        child: Scaffold(
            body: Column(
          children: [
            Center(
              heightFactor: 3.5,
              child: Lottie.asset('Assets/animation/errAnimate.json'),
            ),
            SizedBox(
                width: 120,
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))))),
                    onPressed: () {
                      Get.offAllNamed('/Login');
                    },
                    child: const Text(
                      'Main Menu',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        )));
  }
}
